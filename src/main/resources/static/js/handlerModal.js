$(document).ready(function () {
});

function openModal(event, isEditBook) {
    var modal = $('#modal' + (isEditBook ? 'Edit' : 'New') + 'Book'),
        modalData = $(event.target);

    modal.find("#bookId").val(isEditBook === true ? modalData.data('id') : '');
    modal.find("#title").val(isEditBook === true ? modalData.data('title') : '');
    modal.find("#author").val(isEditBook === true ? modalData.data('author') : '');
    modal.find("#description").val(isEditBook === true ? modalData.data('description') : '');
    modal.find("#createdAt").val(isEditBook === true ? modalData.data('createdat') : modal.find("#createdAt").val());

    modal.modal('show');
}

function submitBookForm(owner) {
    var isEditBook = true,
        bookForm = $(owner).closest('#ajaxEditBookForm');

    if (bookForm.length === 0) {
        bookForm = $(owner).closest('#ajaxNewBookForm');
        isEditBook = false;
    }

    var model = getDataForm(bookForm);

    $.ajax({
        type: bookForm.attr('method'),
        url: bookForm.attr('action'),
        data : JSON.stringify(model),
        contentType: 'application/json',
        success: function (data) {
            updateBookList(data, isEditBook)
        },
        error: function () {
            $(this).html("Error!");
        }
    });
}

function getDataForm(bookForm) {
    return {
        id: bookForm.parent().find("#bookId").val(),
        title: bookForm.find("#title").val(),
        author: bookForm.find("#author").val(),
        description: bookForm.find("#description").val(),
        createdAt: bookForm.parent().find("#createdAt") && bookForm.parent().find("#createdAt").val(),
        updateAt: bookForm.parent().find("#updatedAt") && bookForm.parent().find("#updatedAt").val()
    }
}

function updateBookList(data, isEditBook) {
    var template = Handlebars.compile($('#book-new-row').html()),
        htmlStr = template(data);

    if (isEditBook) {
        $('#book-index-' + data.id).replaceWith(htmlStr);
    } else {
        $('.book-list-content').append(htmlStr);
    }
}

function deleteBook(id) {
    $.ajax({
        type: 'DELETE',
        url: '/book/delete/' + id,
        success: function (data) {
            $('#book-index-' + id).remove();
        },
        error: function () {
            $(this).html("Error!");
        }
    });
}