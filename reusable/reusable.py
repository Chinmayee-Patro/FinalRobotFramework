from xml.dom import minidom
from pathlib import Path



def readXMLAsPerNode(your_test_param):
        first_parse_XML = minidom.parse(str(Path(__file__).parent.parent) + '/testdata.xml')
        data = first_parse_XML.getElementsByTagName(your_test_param)[0]
        return data.firstChild.data
