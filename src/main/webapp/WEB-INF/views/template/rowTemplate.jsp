<script id="book-new-row" type="text/x-handlebars-template">
    <div id= "book-index-{{id}}" class="row content" style=" padding:10px; margin: 0 15px">
        <div class="col-md-3 text-left">
            <a href="view?id={{id}}">{{title}}</a></div>
        <div class="col-md-3 text-left">{{author}}</div>
        <div class="col-md-3 text-left">{{description}}</div>
        <div class="col-md-3 text-left">
            <a data-toggle="modal" data-id="{{id}}" data-title="{{title}}" data-author="{{author}}" data-description="{{description}}"
               data-createdAt="{{createdAt}}" class="btn btn-outline-info" href="#modalEditBook"
               onclick="openModal(event, true);" style="min-width: 70px">Edit</a>
            <a class="btn btn-outline-danger" style="min-width: 70px" onclick="deleteBook('{{id}}');">Delete</a>
        </div>
    </div>
</script>