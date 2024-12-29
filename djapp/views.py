from django.http import HttpResponse


def home(request):
    return HttpResponse("This is a test django project for checkby santosh")
