$Content

<% if $CanAddMembers %>
  <h2><%t MemberProfiles.ADDMEMBER 'Add Member' %></h2>
  <p><%t MemberProfiles.ADDMEMBERLINK 'You can use this page to <a href="{addLink}">add a new member</a>.' addLink=$Link(add) %></p>

  <h2><%t MemberProfiles.YOURPROFILE 'Your Profile' %></h2>
<% end_if %>

<% if $CurrentMember %>
  <h2>Your programs</h2>
  <ul>
    <% loop Programs() %>
      <li><a href="$Link">$MenuTitle</a></li>
      <ul>
        <% loop AllChildren() %>
          <li><a href="$Link">$MenuTitle</a></li>
        <% end_loop %>
      </ul>
    <% end_loop %>
  </ul>
  <h2>Edit profile</h2>
  $Form
<% end_if %>
