select top 100
  id as [User Link],
  round((100.0 * (Reputation/10)) / (Upvotes+1), 2) as [Ratio %],
  Reputation as Rep, 
  UpVotes as [+ Votes],
  DownVotes [- Votes]
from Users
--where Reputation > ##MinRep##
--  and Upvotes > ##MinUpvotes##
order by [Ratio %] desc