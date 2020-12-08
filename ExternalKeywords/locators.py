import json
import jsonpath

def read_locator_from_json(locator_name):
    file_path = open("../JsonFiles/Elements.json",'r')
    response = json.loads(file_path.read())
    return jsonpath.jsonpath(response,locator_name)[0]