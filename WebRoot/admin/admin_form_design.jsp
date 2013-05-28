<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
    <title>同济大学IBM技术中心后台管理</title>
  
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="同济大学IBM技术中心">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/js/google-code-prettify/prettify.css">
    <link rel="stylesheet" type="text/css" href="../assets/stylesheets/css/custom.css">
    <link rel="stylesheet" type="text/css" href="../assets/stylesheets/css/admin.css">
    <script type="text/javascript" src="ueditor/editor_config.js"></script>
    <script type="text/javascript" src="ueditor/editor_all.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.js"></script>

  </head>
  
  <body>
    <div class="admin-header">
       <h1>同济大学IBM技术中心后台管理</h1>
    </div>
    <div class="span3">
      <div class="well sidebar-nav">
        <ul class="nav nav-list">
          <li class="nav-header">静态网页管理</li>
          <li class="active"><a href="#">条目1</a></li>
          <li><a href="#">条目2</a></li>
          <li><a href="#">条目3</a></li>
          <li class="nav-header">动态网页管理</li>
          <li><a href="#">条目1</a></li>
          <li><a href="#">条目2</a></li>
        </ul>
      </div>
    </div>
    <div class="span12 well">
      <div class="span6">
          <div class="clearfix">
            <h2>Your Form</h2>
            <hr>
            <div id="build">
              <form id="target" class="form-horizontal">
                <fieldset>
                  <div id="legend" class="component" rel="popover" trigger="manual" data-content="
                    &lt;form class=&#39;form&#39;&gt;
                      &lt;div class=&#39;controls&#39;&gt;
                        &lt;label class=&#39;control-label&#39;&gt;Title&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;title&#39; id=&#39;text&#39;&gt;
                        &lt;hr/&gt;
                        &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                      &lt;/div&gt;
                    &lt;/form&gt;" data-original-title="Form Title">
                    <legend class="valtype" data-valtype="text">表单名</legend>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
        </div>

        <div class="span6">
            <h2>拖拽下面的组件到左侧</h2>
            <hr>
          <div class="tabbable">
            <ul class="nav nav-tabs" id="navtab">
              <li class="active"><a href="http://www.bootcss.com/p/bootstrap-form-builder/#1" data-toggle="tab">输入框</a></li>
              <li class=""><a href="http://www.bootcss.com/p/bootstrap-form-builder/#2" data-toggle="tab">Select</a></li>
              <li class=""><a href="http://www.bootcss.com/p/bootstrap-form-builder/#3" data-toggle="tab">Checkbox / Radio</a></li>
              <li class=""><a href="http://www.bootcss.com/p/bootstrap-form-builder/#4" data-toggle="tab">文件 / 按钮</a></li>
              <li class=""><a id="sourcetab" href="http://www.bootcss.com/p/bootstrap-form-builder/#5" data-toggle="tab">生成代码</a></li>
            </ul>
            <form class="form-horizontal" id="components">
              <fieldset>
                <div class="tab-content">

                  <div class="tab-pane active" id="1">

                    <div class="control-group component" data-type="text" rel="popover" title="Text Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Text input-->
                      <label class="control-label valtype" for="input01" data-valtype="label">Text input</label>
                      <div class="controls">
                        <input type="text" placeholder="placeholder" class="input-xlarge valtype" data-valtype="placeholder">
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>
                    </div>


                    <div class="control-group component" data-type="search" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Search input-->
                      <label class="control-label valtype" data-valtype="label">Search input</label>
                      <div class="controls">
                        <input type="text" placeholder="placeholder" class="input-xlarge search-query valtype" data-valtype="placeholder">
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>


                    <div class="control-group component" data-type="prep-text" rel="popover" title="Prepended Text Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Prepend&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;prepend&#39; id=&#39;prepend&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Prepended text-->
                      <label class="control-label valtype" data-valtype="label">Prepended text</label>
                      <div class="controls">
                        <div class="input-prepend">
                          <span class="add-on valtype" data-valtype="prepend">^_^</span>
                          <input class="span2 valtype" placeholder="placeholder" id="prependedInput" type="text" data-valtype="placeholder">
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" data-type="app-text" rel="popover" title="Appended Text Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Appepend&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;append&#39; id=&#39;append&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Appended input-->
                      <label class="control-label valtype" data-valtype="label">Appended text</label>
                      <div class="controls">
                        <div class="input-append">
                          <input class="span2 valtype" data-valtype="placeholder" placeholder="placeholder" type="text">
                          <span class="add-on valtype" data-valtype="append">^_^</span>
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;label class=&#39;checkbox&#39;&gt;&lt;input type=&#39;checkbox&#39; class=&#39;input-inline&#39; name=&#39;checked&#39; id=&#39;checkbox&#39;&gt;Checked&lt;/label&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Prepended checkbox -->
                      <label class="control-label valtype" data-valtype="label">Prepended checkbox</label>
                      <div class="controls">
                        <div class="input-prepend">
                          <span class="add-on">
                            <label class="checkbox">
                              <input type="checkbox" class="valtype" data-valtype="checkbox">
                            </label>
                          </span>
                          <input class="span2 valtype" placeholder="placeholder" type="text" data-valtype="placeholder">
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Placeholder&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;placeholder&#39; id=&#39;placeholder&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Help Text&lt;/label&gt; &lt;input type=&#39;text&#39; name=&#39;help&#39; id=&#39;help&#39;&gt;
                          &lt;label class=&#39;checkbox&#39;&gt;&lt;input type=&#39;checkbox&#39; class=&#39;input-inline&#39; name=&#39;checked&#39; id=&#39;checkbox&#39;&gt;Checked&lt;/label&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Appended checkbox -->
                      <label class="control-label valtype" data-valtype="label">Append checkbox</label>
                      <div class="controls">
                        <div class="input-append">
                          <input class="span2 valtype" placeholder="placeholder" type="text" data-valtype="placeholder">
                          <span class="add-on">
                            <label class="checkbox" for="appendedCheckbox">
                              <input type="checkbox" class="valtype" data-valtype="checkbox">
                            </label>
                          </span>
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>
                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Textarea -->
                      <label class="control-label valtype" data-valtype="label">Textarea</label>
                      <div class="controls">
                        <div class="textarea">
                              <textarea type="" class="valtype" data-valtype="checkbox"> </textarea>
                        </div>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="2">

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Options: &lt;/label&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;option&#39;&gt; &lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Select Basic -->
                      <label class="control-label valtype" data-valtype="label">Select - Basic</label>
                      <div class="controls">
                        <select class="input-xlarge valtype" data-valtype="option">
                          <option>Enter</option>
                          <option>Your</option>
                          <option>Options</option>
                          <option>Here!</option>
                        </select>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Options: &lt;/label&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;option&#39;&gt;&lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">

                      <!-- Select Multiple -->
                      <label class="control-label valtype" data-valtype="label">Select - Multiple</label>
                      <div class="controls">
                        <select class="input-xlarge valtype" multiple="multiple" data-valtype="option">
                          <option>Enter</option>
                          <option>Your</option>
                          <option>Options</option>
                          <option>Here!</option>
                        </select>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="3">

                    <div class="control-group component" rel="popover" title="Multiple Checkboxes" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Options: &lt;/label&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;checkboxes&#39;&gt; &lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">Checkboxes</label>
                      <div class="controls valtype" data-valtype="checkboxes">

                        <!-- Multiple Checkboxes -->
                        <label class="checkbox">
                          <input type="checkbox" value="Option one">
                          Option one
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" value="Option two">
                          Option two
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Multiple Radios" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Group Name Attribute&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;name&#39; id=&#39;name&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Options: &lt;/label&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;radios&#39;&gt;&lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">Radio buttons</label>
                      <div class="controls valtype" data-valtype="radios">

                        <!-- Multiple Radios -->
                        <label class="radio">
                          <input type="radio" value="Option one" name="group" checked="checked">
                          Option one
                        </label>
                        <label class="radio">
                          <input type="radio" value="Option two" name="group">
                          Option two
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Inline Checkboxes" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;inline-checkboxes&#39;&gt;&lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">Inline Checkboxes</label>

                      <!-- Multiple Checkboxes -->
                      <div class="controls valtype" data-valtype="inline-checkboxes">
                        <label class="checkbox inline">
                          <input type="checkbox" value="1"> 1
                        </label>
                        <label class="checkbox inline">
                          <input type="checkbox" value="2"> 2
                        </label>
                        <label class="checkbox inline">
                          <input type="checkbox" value="3"> 3
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Inline radioes" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Group Name Attribute&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;name&#39; id=&#39;name&#39;&gt;
                          &lt;textarea style=&#39;min-height: 200px&#39; id=&#39;inline-radios&#39;&gt;&lt;/textarea&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">Inline radios</label>
                      <div class="controls valtype" data-valtype="inline-radios">

                        <!-- Inline Radios -->
                        <label class="radio inline">
                          <input type="radio" value="1" checked="checked" name="group">
                          1
                        </label>
                        <label class="radio inline">
                          <input type="radio" value="2" name="group">
                          2
                        </label>
                        <label class="radio inline">
                          <input type="radio" value="3">
                          3
                        </label>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="4">
                    <div class="control-group component" rel="popover" title="File Upload" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">File Button</label>

                      <!-- File Upload -->
                      <div class="controls">
                        <input class="input-file" id="fileInput" type="file">
                      </div>
                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual" data-content="
                      &lt;form class=&#39;form&#39;&gt;
                        &lt;div class=&#39;controls&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Label Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;label&#39;&gt;
                          &lt;label class=&#39;control-label&#39;&gt;Button Text&lt;/label&gt; &lt;input class=&#39;input-large&#39; type=&#39;text&#39; name=&#39;label&#39; id=&#39;button&#39;&gt;
                          &lt;label class=&#39;control-label&#39; id=&#39;&#39;&gt;Type: &lt;/label&gt;
                          &lt;select class=&#39;input&#39; id=&#39;color&#39;&gt;
                            &lt;option id=&#39;btn-default&#39;&gt;Default&lt;/option&gt;
                            &lt;option id=&#39;btn-primary&#39;&gt;Primary&lt;/option&gt;
                            &lt;option id=&#39;btn-info&#39;&gt;Info&lt;/option&gt;
                            &lt;option id=&#39;btn-success&#39;&gt;Success&lt;/option&gt;
                            &lt;option id=&#39;btn-warning&#39;&gt;Warning&lt;/option&gt;
                            &lt;option id=&#39;btn-danger&#39;&gt;Danger&lt;/option&gt;
                            &lt;option id=&#39;btn-inverse&#39;&gt;Inverse&lt;/option&gt;
                          &lt;/select&gt;
                          &lt;hr/&gt;
                          &lt;button class=&#39;btn btn-info&#39;&gt;Save&lt;/button&gt;&lt;button class=&#39;btn btn-danger&#39;&gt;Cancel&lt;/button&gt;
                        &lt;/div&gt;
                      &lt;/form&gt;">
                      <label class="control-label valtype" data-valtype="label">Button</label>

                      <!-- Button -->
                      <div class="controls valtype" data-valtype="button">
                        <button class="btn btn-success">Button</button>
                      </div>
                    </div>
                  </div>


                  <div class="tab-pane" id="5">
                    <textarea id="source" class="span6"></textarea>
                  </div>
                </div></fieldset>
              </form>
            </div>
          </div>
    </div>

    <!-- scripts -->
    <script type="text/javascript" src="../assets/bootstrap/js/jquery.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/google-code-prettify/prettify.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-transition.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-alert.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-modal.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-dropdown.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-scrollspy.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-tab.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-tooltip.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-popover.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-button.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-collapse.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-carousel.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-typeahead.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/fb.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/projects.js"></script>
  </body>
</html>