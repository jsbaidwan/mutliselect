<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mutliselect._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        Mutliselect without ctrl
    </h2>
    <p>
        <select multiple="multiple">
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
            <option>Opt</option>
        </select>
    </p>
    <script>
        $('option').mousedown(function(e) {
            e.preventDefault();
            var originalScrollTop = $(this).parent().scrollTop();
            console.log(originalScrollTop);
            $(this).prop('selected', $(this).prop('selected') ? false : true);
            var self = this;
            $(this).parent().focus();
            setTimeout(function() {
                $(self).parent().scrollTop(originalScrollTop);
            }, 0);
    
            return false;
         });
    </script>
</asp:Content>
