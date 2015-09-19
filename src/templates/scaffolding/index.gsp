
<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
	<g:if test="\${flash.message}">
		<div class="alert alert-success alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			\${flash.message}
		</div>
	</g:if>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<g:message code="default.list.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
							allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
							props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
							Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
							props.eachWithIndex { p, i ->
								if (i < 6) {
									if (p.isAssociation()) { %>
							<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
						<%      } else { %>
							<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
						<%  }   }   } %>
						<th>Opciones</th>
					</tr>
				</thead>
				<tbody>
					<g:each in="\${${propertyName}List}" status="i"
						var="${propertyName}">
						<tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
							<%  props.eachWithIndex { p, i ->
								if (i == 0) { %>
								<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
							<%      } else if (i < 6) {
										if (p.type == Boolean || p.type == boolean) { %>
								<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
							<%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
								<td><g:formatDate date="\${${propertyName}.${p.name}}" format="dd/MM/yyyy HH:mm" /></td>
							<%          } else { %>
								<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
							<%  }   }   } %>
							<td><g:link action="show" class="btn btn-default" id="\${${propertyName}.id}">VER</g:link></td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
		<div class="panel-footer">
			<a href="\${createLink(action:'create')}" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></a>
		</div>
	</div>
</body>
</html>