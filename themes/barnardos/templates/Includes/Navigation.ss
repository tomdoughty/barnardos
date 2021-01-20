<ul class="header__navigation-list">
  <% loop $Menu(1) %>
    <li class="header__navigation-item <% if First() %>header__navigation-item--for-mobile<% end_if %>">
      <a class="header__navigation-link" href="$Link">
        $MenuTitle.XML
      </a>
    </li>
  <% end_loop %>
  <% if $CurrentMember %>
    <li class="header__navigation-item header__navigation-item--login">
      <a class="header__navigation-link" href="/dashboard">
        Dashboard
      </a>
    </li>
    <li class="header__navigation-item header__navigation-item--login">
      <a class="header__navigation-link" href="/Security/logout?BackURL=%2F">
        Logout
      </a>
    </li>
  <% else %>
    <li class="header__navigation-item header__navigation-item--login">
      <a class="header__navigation-link" href="/partners">
        Register
      </a>
    </li>
    <li class="header__navigation-item header__navigation-item--login">
      <a class="header__navigation-link" href="/Security/login?BackURL=%2Fdashboard%2F">
        Login
      </a>
    </li>
  <% end_if %>
</ul>
