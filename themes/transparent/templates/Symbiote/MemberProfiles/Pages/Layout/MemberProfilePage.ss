<div class="width-container">
  <div class="grid-row">
    <div class="grid-column-full">
      <div class="u-reading-width">
        <h1>$Title</h1>
        <% if $Type == 'Register' %>
          <% include Symbiote/MemberProfiles/Pages/MemberProfilePage_register %>
        <% else_if $Type == 'Add' %>
          <% include Symbiote/MemberProfiles/Pages/MemberProfilePage_addmember %>
        <% else %>
          <% include Symbiote/MemberProfiles/Pages/MemberProfilePage_profile %>
        <% end_if %>
      </div>
    </div>
  </div>
</div>
