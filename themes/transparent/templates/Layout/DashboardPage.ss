<div class="width-container">
  <div class="grid-row">
    <div class="grid-column-full">
      <div class="u-reading-width">
        <h1>$Title</h1>
        $Content
        <p>Welcome back {$CurrentMember.FirstName}. Use this dashboard to view your programmes or to edit your profile.</p>
        <h2>Your programmes</h2>
        <ul>
          <% loop Programmes() %>
            <li><a href="$Link">$MenuTitle</a></li>
          <% end_loop %>
        </ul>
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
