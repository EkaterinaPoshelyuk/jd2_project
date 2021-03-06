<!doctype html>
<#import "/spring.ftl" as spring/>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <#include "style/edit_and_new_form.ftl">

    <title>Edit sensor</title>
</head>
<body>
<form action="/allsensors/edit/${sensorDTO.sensorId}" method="post">
    <div class="container">
        <div class="row" style="padding-left: 30%">
            <div class="col-xs-6" style="height: 60px;margin-top: 20px">
                <h1>Edit sensor</h1>
            </div>

            <div class="form-group required row row-m-t">
                <label for="name" class="col-sm-1 col-form-label col-form-label-sm">Name</label>
                <div class="col-5 ml-auto mr-4">
                    <@spring.bind "sensorDTO.name" />
                    <input type="text" class="form-control form-control-sm" placeholder="Name"
                           aria-label="name" aria-describedby="basic-addon2" name="name"
                           value="${sensorDTO.name!}" required maxlength="30"/>
                    <span class="span"><@spring.showErrors ', ' 'error'/></span>
                </div>
            </div>

            <div class="form-group required row row-m-t">
                <label for="name" class="col-sm-1 col-form-label col-form-label-sm">Model</label>
                <div class="col-5 ml-auto mr-4">
                    <@spring.bind "sensorDTO.model" />
                    <input type="text" class="form-control form-control-sm" placeholder="Model"
                           aria-label="name" aria-describedby="basic-addon2" name="model"
                           value="${sensorDTO.model!}" required maxlength="15"/>
                    <span class="span"><@spring.showErrors ', ' 'error'/></span>
                </div>
            </div>

            <div class="form-group required row row-m-t">
                <label for="rangeFrom" class="col-sm-1 col-form-label col-form-label-sm">Range from</label>
                <div class="col-2 ml-auto mr-1">
                    <input type="number" class="form-control form-control-sm" step="1" min="-300" max="300"
                           name="rangeFrom"
                           value="${sensorDTO.rangeFrom}" required/>
                </div>
                <label for="rangeTo" class="col-sm-1 col-form-label col-form-label-sm">Range to</label>
                <div class="col-2 ml-auto mr-1">
                    <input type="number" class="form-control form-control-sm" step="1" min="-300" max="300"
                           name="rangeTo"
                           value="${sensorDTO.rangeTo}" required/>
                </div>
            </div>

            <div class="row row-m-t">
                <label for="type" class="col-sm-1 col-form-label col-form-label-sm">Type</label>
                <div class="col-5 ml-auto mr-4">
                    <select class="form-select form-select-sm" aria-label=".form-select-sm example"
                            name="type" required>
                        <option>${sensorDTO.type}</option>
                        <#list types as type>
                            <option value=${type}>${type}</option>
                        </#list>
                    </select>
                </div>
            </div>

            <div class="row row-m-t">
                <label for="unit" class="col-sm-1 col-form-label col-form-label-sm">Unit</label>
                <div class="col-5 ml-auto mr-4">
                    <select class="form-select form-select-sm" aria-label=".form-select-sm example"
                            name="unit" required>
                        <option>${sensorDTO.unit}</option>
                        <#list units as unit>
                            <option value=${unit}>${unit}</option>
                        </#list>
                    </select>
                </div>
            </div>

            <div class="form-group required row row-m-t">
                <label for="location" class="col-sm-1 col-form-label col-form-label-sm">Location</label>
                <div class="col-5 ml-auto mr-4">
                    <@spring.bind "sensorDTO.location" />
                    <input type="text" class="form-control form-control-sm" placeholder="Location"
                           aria-label="location" aria-describedby="basic-addon2" name="location"
                           value="${sensorDTO.location!}" required maxlength="40"/>
                    <span class="span"><@spring.showErrors ', ' 'error'/></span>
                </div>
            </div>

            <div class="row row-m-t">
                <label for="description" class="col-sm-1 col-form-label col-form-label-sm">Description</label>
                <div class="col-sm-5">
                    <@spring.bind "sensorDTO.description" />
                    <textarea class="form-control" name="description" rows="7"
                              value="${sensorDTO.description!}" maxlength="200">${sensorDTO.description}</textarea>
                    <span class="span"><@spring.showErrors ', ' 'error'/></span>
                </div>
            </div>

            <div class="row row-m-t">
                <div class="col-md-4 text-center">
                    <form>
                        <button type="submit" class="btn btn-outline-success custom">Save</button>
                    </form>
                </div>

                <div class="col-md-2 text-center">
                    <form action="/allsensors/back">
                        <button type="submit" class="btn btn-outline-danger custom">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
