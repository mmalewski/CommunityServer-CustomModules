﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ElementsView.ascx.cs" Inherits="ASC.Web.Sample.Controls.DefaultView" %>

<div>

    <h1>Drop-down list</h1>

    <div>

        <select id="select">
            <option value="1">item 1</option>
            <option value="2">item 2</option>
        </select>

        <pre>
            <code>
jq("#select").tlCombobox();
            </code>
        </pre>

    </div>

    <div>

        <a id="dropdownBtn" class="button gray group"><span>button gray group</span></a>

        <div id="dropdownPanel" class="studio-action-panel">
            <div class="corner-top left"></div>
            <ul class="dropdown-content">
                <li>
                    <a class="dropdown-item">item 1</a>
                </li>
                <li>
                    <a class="dropdown-item">item 2</a>
                </li>
                <li class="dropdown-item-seporator"></li>
                <li>
                    <a class="dropdown-item disable">item 3 (disabled)</a>
                </li>
            </ul>
        </div>

        <pre>
            <code>
jq.dropdownToggle({
    switcherSelector: "#dropdownBtn",
    dropdownID: "dropdownPanel",
    addTop: 10,
    addLeft: 0,
    rightPos: false
});
            </code>
        </pre>

    </div>

    <h1>Pop-up dialog</h1>

    <div>

        <a id="popupBtn" class="button blue">show dialog</a>

        <div id="popupDialog" class="display-none">
            <div class="popupContainerClass">
                <div class="containerHeaderBlock">
                    <table style="width:100%;" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td>
                                    <div>Header</div>
                                </td>
                                <td class="popupCancel">
                                    <div class="cancelButton close-popup">×</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="containerBodyBlock">
                    Content
                    <div class="middle-button-container">
                        <a class="button blue middle show-loading">Loading</a>
                        <span class="splitter-buttons"></span>
                        <a class="button blue middle show-error">Error</a>
                        <span class="splitter-buttons"></span>
                        <a class="button blue middle show-success">Success</a>
                        <span class="splitter-buttons"></span>
                        <a class="button gray middle close-popup">Cancel</a>
                    </div>
                </div>
            </div>
        </div>

        <pre>
            <code>
StudioBlockUIManager.blockUI("#popupDialog", 500, 500, 0);
LoadingBanner.showLoaderBtn("#popupDialog");
LoadingBanner.hideLoaderBtn("#popupDialog");
LoadingBanner.showMesInfoBtn("#popupDialog", "error message", "error");
LoadingBanner.showMesInfoBtn("#popupDialog", "success message", "success");
PopupKeyUpActionProvider.CloseDialog();
            </code>
        </pre>

    </div>

    <h1>Page loading</h1>

    <div>

        <a class="button blue" onclick="LoadingBanner.displayLoading(true);">Display Loading</a>
        <span class="splitter-buttons"></span>
        <a class="button gray" onclick="LoadingBanner.hideLoading();">Hide Loading</a>

        <pre>
            <code>
LoadingBanner.strLoading = "Loading..."
LoadingBanner.strDescription = "Please wait..."
LoadingBanner.displayLoading(true);
LoadingBanner.hideLoading();
            </code>
        </pre>

    </div>

    <h1>Toastr messages</h1>

    <div>

        <a class="button blue" onclick="toastr.error('error message');">error</a>
        <span class="splitter-buttons"></span>
        <a class="button blue" onclick="toastr.success('success message');">success</a>
        <span class="splitter-buttons"></span>
        <a class="button blue" onclick="toastr.warning('warning message');">warning</a>

        <pre>
            <code>
toastr.error('error message');
toastr.success('success message');
toastr.warning('warning message');
            </code>
        </pre>

    </div>


</div>
