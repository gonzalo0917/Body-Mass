# -*- coding: utf-8 -*-
<%= form_for(@body_index) do |f| %>
  <% if @user.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@user.errors.count, "error") %> prohibited this user from being saved:</h2>

      <ul>
      <% @user.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
      </ul>
    </div>
  <% end %>
  
      <div class="field">
        <%= f.mass :calle, :placeholder => "Calle y número" %>
      </div>
      <div class="field">
        <%= f.heigth :cp, :placeholder => "Código postal" %>
        <%= f.result :colonia, :placeholder => "Colonia" %>
      </div>

  <div class="actions">
    <%= f.submit "" %>
  </div>
<% end %>
