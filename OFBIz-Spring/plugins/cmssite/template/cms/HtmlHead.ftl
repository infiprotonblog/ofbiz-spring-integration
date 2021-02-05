<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<#if locale??>
    <#assign initialLocale = locale.toString()>
<#else>
    <#assign initialLocale = "en">
</#if>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>${(decoratedContent.subcontent.title.render)!"CMS Site Generic Title (Set subcontent 'title' on your content!)"}</title>
    <link rel="shortcut icon" href="/images/ofbiz.ico" />
    <#assign nothing = thisContent.setSortOrder("caSequenceNum")/>
    <#assign nothing = thisContent.setMapKeyFilter("js")/>
    <#list thisContent.subcontent_all as content>
      <script src="${content.render!}" type="text/javascript"></script>
    </#list>
    <#assign nothing = thisContent.setMapKeyFilter("css")/>
    <#list thisContent.subcontent_all as content>
      <link rel="stylesheet" href="${content.render!}" type="text/css"/>
    </#list>
    <meta name="description" content="${(decoratedContent.subcontent.metaDescription.render)!}"/>
    <meta name="keywords" content="${(decoratedContent.subcontent.metaKeywords.render)!}"/>
</head>
<body>
