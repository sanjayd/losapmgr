module MembersHelper

  def no_members
    haml (<<-EOF)
%tr
  %td(colspan=5 style='text-align: center') No Members
EOF
  end
  
end
