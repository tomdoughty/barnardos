<div class="width-container">
  <div class="grid-row">
    <div class="grid-column-full">
      <div class="u-reading-width">
        <h1>$Title</h1>
        <% if $Type = 'List' %>
          <% include Symbiote/MemberProfiles/Pages/MemberProfileViewer_list %>
        <% else %>
          <% include Symbiote/MemberProfiles/Pages/MemberProfileViewer_view %>
        <% end_if %>
      </div>
    </div>
  </div>
</div>
