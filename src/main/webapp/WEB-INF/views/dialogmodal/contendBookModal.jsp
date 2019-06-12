<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Book Detail</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <form>
                <div class="form-group">
                    <label for="title" class="col-form-label">Title <span style="color: red">(*)</span></label>
                    <input type="text" class="form-control" id="title"/>
                </div>
                <div class="form-group">
                    <label for="author" class="col-form-label">Author <span style="color: red">(*)</span></label>
                    <input class="form-control" id="author"/>
                </div>
                <div class="form-group">
                    <label for="description" class="col-form-label">Description</label>
                    <textarea class="form-control" id="description"></textarea>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submitBookForm(this)">Save</button>
        </div>
    </div>
</div>