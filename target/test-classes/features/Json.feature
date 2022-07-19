Feature: json feature testing

Scenario: json reader parser


* def jsonObject =
"""
[
{
"name" : "tom",
"city" : "Pune",
"age" : 30
},
{
"name" : "jack",
"city" : "Mumbai",
"age" : 40
}
]
"""

* print jsonObject
* print jsonObject[1]
* print jsonObject[0].name
* print jsonObject[0].name + " " +jsonObject[0].city

Scenario: complex json reader
