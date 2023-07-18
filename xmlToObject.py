import xmltodict
import json
import pprint

filePath = "mainApp/main/default/labels/CustomLabels.labels-meta.xml"

with open(filePath,"r",encoding='utf-8') as f:
    xmlContent = f.read()
    f.close()

jsonContent = xmltodict.parse(xmlContent)

outFilePath = "/Users/konstantinheidt/Desktop/DevSources/ctx2/xmlToDictFile.json"

with open (outFilePath, "w") as f:
    f.write(json.dumps(jsonContent, indent=4))
    f.close()

