<div class="width-container">
  <div class="grid-row">
    <div class="grid-column-full">
      <div class="u-reading-width">
        <h1>$Title</h1>
        $Content
        
        <p>Welcome back {$CurrentMember.FirstName}. Use this dashboard to view your programmes or to edit your profile.</p>
        
        <h2>Your programmes</h2>
        <% if Programmes() %>
          <ul>
            <% loop Programmes() %>
              <li><a href="$Link">$MenuTitle</a></li>
            <% end_loop %>
          </ul>
        <% else %>
          <p>You do not have access to any programmes yet. Please contact us to discuss access to our programmes.</p>
        <% end_if %>

        <h2>Profile</h2>
        <% with $CurrentMember %>
          <p><strong>Name:</strong> $FirstName $LastName</p>
          <p><strong>Email:</strong> $Email</p>
        <% end_with %>
        <p><a href="/partners">Edit profile</a></p>

      </div>
    </div>
  </div>
</div>

$Form