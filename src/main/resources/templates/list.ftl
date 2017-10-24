<div class="generic-container">
  <div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">Specific User </span></div>
    <div class="panel-body">
      <div class="formcontainer">
        <div class="alert alert-success" ng-if="ctrl.successMessage" role="alert">
          {{ctrl.successMessage}}
        </div>
        <div class="alert alert-danger" ng-if="ctrl.errorMessage" role="alert">
          {{ctrl.errorMessage}}
        </div>
        <form class="form-horizontal" name="myForm" ng-submit="ctrl.submit()">
          <input ng-model="ctrl.user.id" type="hidden"/>
          <div class="row">
            <div class="form-group col-md-12">
              <label class="col-md-2 control-lable" for="uname">Name</label>
              <div class="col-md-7">
                <input class="username form-control input-sm" id="uname" ng-minlength="3"
                       ng-model="ctrl.user.name" placeholder="Enter your name" required
                       type="text"/>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-12">
              <label class="col-md-2 control-lable" for="age">Age</label>
              <div class="col-md-7">
                <input class="form-control input-sm" id="age" ng-model="ctrl.user.age"
                       ng-pattern="ctrl.onlyIntegers"
                       placeholder="Enter your Age." required type="text"/>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-12">
              <label class="col-md-2 control-lable" for="salary">Salary</label>
              <div class="col-md-7">
                <input class="form-control input-sm" id="salary" ng-model="ctrl.user.salary"
                       ng-pattern="ctrl.onlyNumbers" placeholder="Enter your Salary." required
                       type="text"/>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="form-actions floatRight">
              <input class="btn btn-primary btn-sm"
                     ng-disabled="myForm.$invalid || myForm.$pristine"
                     type="submit"
                     value="{{!ctrl.user.id ? 'Add' : 'Update'}}">
              <button class="btn btn-warning btn-sm" ng-click="ctrl.reset()"
                      ng-disabled="myForm.$pristine"
                      type="button">Reset Form
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><span class="lead">List of Users </span></div>
    <div class="panel-body">
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
          <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>SALARY</th>
            <th width="100"></th>
            <th width="100"></th>
          </tr>
          </thead>
          <tbody>
          <tr ng-repeat="u in ctrl.getAllUsers()">
            <td>{{u.id}}</td>
            <td>{{u.name}}</td>
            <td>{{u.age}}</td>
            <td>{{u.salary}}</td>
            <td>
              <button class="btn btn-success custom-width" ng-click="ctrl.editUser(u.id)"
                      type="button">Edit
              </button>
            </td>
            <td>
              <button class="btn btn-danger custom-width" ng-click="ctrl.removeUser(u.id)"
                      type="button">Remove
              </button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>