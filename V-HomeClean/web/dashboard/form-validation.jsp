<%-- 
    Document   : form-validation
    Created on : May 28, 2023, 11:31:17 PM
    Author     : Trung Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0"
            />
        <title>Dreamchat - Dashboard</title>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="css/assets/img/favicon.png"
            />

        <link rel="stylesheet" href="css/assets/css/bootstrap.min.css" />

        <link rel="stylesheet" href="css/assets/css/font-awesome.min.css" />

        <link rel="stylesheet" href="css/assets/css/feathericon.min.css" />

        <link rel="stylesheet" href="css/assets/plugins/morris/morris.css" />

        <link rel="stylesheet" href="css/assets/css/style.css" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="page-title">Form Validation</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="dashboard/index.jsp">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">Form Validation</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Custom Bootstrap Form Validation</h5>
                                    <p class="card-text">
                                        For custom Bootstrap form validation messages, you’ll need
                                        to add the <code>novalidate</code> boolean attribute to your
                                        form. For server side validation
                                        <a
                                            href="https://getbootstrap.com/docs/5.1/forms/overview/"
                                            target="_blank"
                                            >read full documentation</a
                                        >.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm">
                                            <form class="needs-validation" novalidate>
                                                <div class="row">
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationCustom01">First name</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationCustom01"
                                                            placeholder="First name"
                                                            value="Mark"
                                                            required
                                                            />
                                                        <div class="valid-feedback">Looks good!</div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationCustom02">Last name</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationCustom02"
                                                            placeholder="Last name"
                                                            value="Otto"
                                                            required
                                                            />
                                                        <div class="valid-feedback">Looks good!</div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationCustomUsername"
                                                               >Username</label
                                                        >
                                                        <div class="input-group">
                                                            <span
                                                                class="input-group-text"
                                                                id="inputGroupPrepend"
                                                                >@</span
                                                            >
                                                            <input
                                                                type="text"
                                                                class="form-control"
                                                                id="validationCustomUsername"
                                                                placeholder="Username"
                                                                aria-describedby="inputGroupPrepend"
                                                                required
                                                                />
                                                            <div class="invalid-feedback">
                                                                Please choose a username.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom03">City</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationCustom03"
                                                            placeholder="City"
                                                            required
                                                            />
                                                        <div class="invalid-feedback">
                                                            Please provide a valid city.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationCustom04">State</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationCustom04"
                                                            placeholder="State"
                                                            required
                                                            />
                                                        <div class="invalid-feedback">
                                                            Please provide a valid state.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationCustom05">Zip</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationCustom05"
                                                            placeholder="Zip"
                                                            required
                                                            />
                                                        <div class="invalid-feedback">
                                                            Please provide a valid zip.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <input
                                                            class="form-check-input"
                                                            type="checkbox"
                                                            value=""
                                                            id="invalidCheck"
                                                            required
                                                            />
                                                        <label class="form-check-label" for="invalidCheck">
                                                            Agree to terms and conditions
                                                        </label>
                                                        <div class="invalid-feedback">
                                                            You must agree before submitting.
                                                        </div>
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary" type="submit">
                                                    Submit form
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Browser defaults</h5>
                                    <p class="card-text">
                                        Not interested in custom validation feedback messages or
                                        writing JavaScript to change form behaviors? All good, you
                                        can use the browser defaults. Try submitting the form below.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm">
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationDefault01">First name</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationDefault01"
                                                            placeholder="First name"
                                                            value="Mark"
                                                            required
                                                            />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationDefault02">Last name</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationDefault02"
                                                            placeholder="Last name"
                                                            value="Otto"
                                                            required
                                                            />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="validationDefaultUsername"
                                                               >Username</label
                                                        >
                                                        <div class="input-group">
                                                            <span
                                                                class="input-group-text"
                                                                id="inputGroupPrepend2"
                                                                >@</span
                                                            >
                                                            <input
                                                                type="text"
                                                                class="form-control"
                                                                id="validationDefaultUsername"
                                                                placeholder="Username"
                                                                aria-describedby="inputGroupPrepend2"
                                                                required
                                                                />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationDefault03">City</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationDefault03"
                                                            placeholder="City"
                                                            required
                                                            />
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationDefault04">State</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationDefault04"
                                                            placeholder="State"
                                                            required
                                                            />
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationDefault05">Zip</label>
                                                        <input
                                                            type="text"
                                                            class="form-control"
                                                            id="validationDefault05"
                                                            placeholder="Zip"
                                                            required
                                                            />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <input
                                                            class="form-check-input"
                                                            type="checkbox"
                                                            value=""
                                                            id="invalidCheck2"
                                                            required
                                                            />
                                                        <label class="form-check-label" for="invalidCheck2">
                                                            Agree to terms and conditions
                                                        </label>
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary" type="submit">
                                                    Submit form
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Server side</h5>
                                    <p class="card-text">
                                        We recommend using client side validation, but in case you
                                        require server side, you can indicate invalid and valid form
                                        fields with <code>.is-invalid</code> and
                                        <code>.is-valid</code>. Note that
                                        <code>.invalid-feedback</code> is also supported with these
                                        classes.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-4 mb-3">
                                                <label for="validationServer01">First name</label>
                                                <input
                                                    type="text"
                                                    class="form-control is-valid"
                                                    id="validationServer01"
                                                    placeholder="First name"
                                                    value="Mark"
                                                    required
                                                    />
                                                <div class="valid-feedback">Looks good!</div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="validationServer02">Last name</label>
                                                <input
                                                    type="text"
                                                    class="form-control is-valid"
                                                    id="validationServer02"
                                                    placeholder="Last name"
                                                    value="Otto"
                                                    required
                                                    />
                                                <div class="valid-feedback">Looks good!</div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="validationServerUsername">Username</label>
                                                <div class="input-group">
                                                    <span class="input-group-text" id="inputGroupPrepend3"
                                                          >@</span
                                                    >
                                                    <input
                                                        type="text"
                                                        class="form-control is-invalid"
                                                        id="validationServerUsername"
                                                        placeholder="Username"
                                                        aria-describedby="inputGroupPrepend3"
                                                        required
                                                        />
                                                    <div class="invalid-feedback">
                                                        Please choose a username.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationServer03">City</label>
                                                <input
                                                    type="text"
                                                    class="form-control is-invalid"
                                                    id="validationServer03"
                                                    placeholder="City"
                                                    required
                                                    />
                                                <div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="validationServer04">State</label>
                                                <input
                                                    type="text"
                                                    class="form-control is-invalid"
                                                    id="validationServer04"
                                                    placeholder="State"
                                                    required
                                                    />
                                                <div class="invalid-feedback">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="validationServer05">Zip</label>
                                                <input
                                                    type="text"
                                                    class="form-control is-invalid"
                                                    id="validationServer05"
                                                    placeholder="Zip"
                                                    required
                                                    />
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input
                                                    class="form-check-input is-invalid"
                                                    type="checkbox"
                                                    value=""
                                                    id="invalidCheck3"
                                                    required
                                                    />
                                                <label class="form-check-label" for="invalidCheck3">
                                                    Agree to terms and conditions
                                                </label>
                                                <div class="invalid-feedback">
                                                    You must agree before submitting.
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">
                                            Submit form
                                        </button>
                                    </form>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Supported elements</h5>
                                    <p class="card-text">
                                        Form validation styles are also available for bootstrap
                                        custom form controls.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm">
                                            <form class="was-validated">
                                                <div class="form-check form-checkbox mb-3">
                                                    <input
                                                        type="checkbox"
                                                        class="form-check-input"
                                                        id="customControlValidation1"
                                                        required
                                                        />
                                                    <label
                                                        class="form-check-label"
                                                        for="customControlValidation1"
                                                        >Check this custom checkbox</label
                                                    >
                                                    <div class="invalid-feedback">
                                                        Example invalid feedback text
                                                    </div>
                                                </div>
                                                <div class="form-check form-radio">
                                                    <input
                                                        type="radio"
                                                        class="form-check-input"
                                                        id="customControlValidation2"
                                                        name="radio-stacked"
                                                        required
                                                        />
                                                    <label
                                                        class="form-check-label"
                                                        for="customControlValidation2"
                                                        >Toggle this custom radio</label
                                                    >
                                                </div>
                                                <div class="form-check form-radio mb-3">
                                                    <input
                                                        type="radio"
                                                        class="form-check-input"
                                                        id="customControlValidation3"
                                                        name="radio-stacked"
                                                        required
                                                        />
                                                    <label
                                                        class="form-check-label"
                                                        for="customControlValidation3"
                                                        >Or toggle this other custom radio</label
                                                    >
                                                    <div class="invalid-feedback">
                                                        More example invalid feedback text
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <select class="form-select" required>
                                                        <option value="">Open this select menu</option>
                                                        <option value="1">One</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        Example invalid custom select feedback
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <input
                                                        type="file"
                                                        class="form-control"
                                                        aria-label="file example"
                                                        required
                                                        />
                                                    <div class="invalid-feedback">
                                                        Example invalid form file feedback
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Tooltips</h5>
                                    <p class="card-text">
                                        You can swap the
                                        <code>.{valid|invalid}-feedback</code> classes for
                                        <code>.{valid|invalid}-tooltip</code> classes to display
                                        validation feedback in a styled tooltip.
                                    </p>
                                </div>
                                <div class="card-body">
                                    <form class="needs-validation" novalidate>
                                        <div class="row">
                                            <div class="col-md-4 mb-3">
                                                <label for="validationTooltip01">First name</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltip01"
                                                    placeholder="First name"
                                                    value="Mark"
                                                    required
                                                    />
                                                <div class="valid-tooltip">Looks good!</div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="validationTooltip02">Last name</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltip02"
                                                    placeholder="Last name"
                                                    value="Otto"
                                                    required
                                                    />
                                                <div class="valid-tooltip">Looks good!</div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="validationTooltipUsername">Username</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltipUsername"
                                                    placeholder="Username"
                                                    required
                                                    />
                                                <div class="invalid-tooltip">
                                                    Please choose a unique and valid username.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationTooltip03">City</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltip03"
                                                    placeholder="City"
                                                    required
                                                    />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="validationTooltip04">State</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltip04"
                                                    placeholder="State"
                                                    required
                                                    />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="validationTooltip05">Zip</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="validationTooltip05"
                                                    placeholder="Zip"
                                                    required
                                                    />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">
                                            Submit form
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="css/assets/js/jquery-3.6.0.min.js"></script>

        <script src="css/assets/js/bootstrap.bundle.min.js"></script>

        <script src="css/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="css/assets/js/form-validation.js"></script>

        <script src="css/assets/js/script.js"></script>
    </body>
</html>

