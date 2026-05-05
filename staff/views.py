from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from django.db import connection
from django.http import JsonResponse

from django.views.decorators.csrf import csrf_exempt

# Helper function to convert cursor rows to dictionaries
def dictfetchall(cursor):
    """Return all rows from a cursor as a dict"""
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def add_staff_data(request):
    if request.method == "POST":
        name = request.POST.get("name")
        dob = request.POST.get("dob")
        mobile = request.POST.get("mobile")
        email = request.POST.get("email")

        with connection.cursor() as cursor:
            sql = "INSERT INTO staff (name, dob, mobile, email) VALUES (%s, %s, %s, %s)"
            cursor.execute(sql, [name, dob, mobile, email])
        
        return JsonResponse({"status": "success", "message": "Staff added successfully!"})
    
    return JsonResponse({"status": "error", "message": "Invalid request"}, status=400)

# 1. This renders the initial HTML page
def staff_list_view(request):
    return render(request, 'staff/staff_list.html')

# 2. This handles the AJAX request and returns JSON data using Raw SQL
def get_staff_data(request):
    cursor = connection.cursor()
    
    # Writing the raw SQL query with your columns
    base_sql = """
        SELECT 
            s.id as id,
            s.name as name,
            s.dob as dob,
            s.mobile as mobile,
            s.email as email
        FROM staff s
    """
    
    cursor.execute(base_sql)
    staff_list = dictfetchall(cursor)
    
    # Debugging to see results in the terminal
    print("DEBUG STAFF DATA:", staff_list)

    # Check if the request is AJAX (common for modern Django/JS setups)
    if request.headers.get('x-requested-with') == 'XMLHttpRequest':
        return JsonResponse({
            "staff": staff_list
        })
    
    # Fallback for direct browser access
    return JsonResponse({"status": "error", "message": "Only AJAX requests allowed"}, status=400)


@csrf_exempt
def get_designation(request):
    cursor = connection.cursor()
    base_sql = """
        SELECT 
            d.id as id,   
            d.name as name,   
            d.status as status
        FROM designation d   
    """

    cursor.execute(base_sql)
    designation = dictfetchall(cursor)
    print("debug",designation)

    if request.headers.get('x-requested_with')=='XMLHttpRequest':
        return JsonResponse({
            'designation' : designation,
        })