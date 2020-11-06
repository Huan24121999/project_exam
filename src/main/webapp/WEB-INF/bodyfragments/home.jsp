
<div class="card">
    <div class="card-header">
        <h3 class="card-title">DANH SÁCH TỔ CHỨC DOANH NGHIỆP</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="dataTables_length" id="example1_length">
                        <label>Show
                            <select name="example1_length" aria-controls="example1" class="custom-select custom-select-sm form-control form-control-sm">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                            </select> Phần tử
                        </label>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div id="example1_filter" class="dataTables_filter">
                        <label>Tìm kiếm theo ngành nghề:

                            <button class="btn btn-primary" type="button" >
                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1" id="agency">
                                <i class="fa fa-search" id="searchAgency"></i>
                            </button>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                        <thead>
                        <tr role="row">
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending">STT</th>
                            <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column descending" aria-sort="ascending">Tên doanh nghiệp</th>
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Mã doanh nghiệp</th>
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Email liên hệ</th>
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" ></th>Chi tiếts</th>
                        </tr>
                        </thead>
                        <tbody id="organization">
                        <tr role="row" >
                            <td class="">
                                <input class="form-control form-control-navbar " type="search" placeholder="Search" aria-label="Search" id="stt">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="name">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="code">
                            </td>
                            <td class="">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" id="eportal">
                            </td>
                            <td class="">
                                <button type="button" class="btn btn-primary" id="search">TÌM KIẾM</button>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th rowspan="1" colspan="1">STT</th>
                            <th rowspan="1" colspan="1">Tên daonh nghiệp</th>
                            <th rowspan="1" colspan="1">Mã doanh nghiệp</th>
                            <th rowspan="1" colspan="1">Email liên hệ</th>
                            <th rowspan="1" colspan="1">Chi tiết</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="row">
                <!-- <div class="col-sm-12 col-md-5">
                    <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                </div> -->
                <div class="col-sm-12 col-md-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                        <ul class="pagination" id="pagination">
                            <!-- <li class="paginate_button page-item previous disabled" id="example1_previous">
                                <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                            </li>
                            <li class="paginate_button page-item active">
                                <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                            </li>

                            <li class="paginate_button page-item next" id="next">
                                <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.card-body -->
</div>