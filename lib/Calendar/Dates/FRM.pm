package Calendar::Dates::FRM;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Role::Tiny::With;

with 'Calendar::DatesRoles::FromData';

our @ENTRIES = (
    # nov2018exam
    {date=>'2019-01-03', summary=>'Exam results sent via email', tags=>['nov2018exam']},

    # may2019exam
    {date=>'2018-12-01', summary=>'Early registration opened', tags=>['may2019exam']},
    {date=>'2019-01-31', summary=>'Early registration closed', tags=>['may2019exam']},
    {date=>'2019-02-01', summary=>'Standard registration opened', tags=>['may2019exam']},
    {date=>'2019-02-28', summary=>'Standard registration closed', tags=>['may2019exam']},
    {date=>'2019-03-01', summary=>'Late registration opened', tags=>['may2019exam']},
    {date=>'2019-04-15', summary=>'Late registration closed', tags=>['may2019exam']},
    {date=>'2019-04-15', summary=>'Defer deadline', tags=>['may2019exam']},
    {date=>'2019-05-01', summary=>'Admission tickets released', tags=>['may2019exam']},
    {date=>'2019-05-18', summary=>'Exam day', tags=>['may2019exam']},
    {date=>'2019-06-28', summary=>'Exam results sent via email', tags=>['may2019exam']},

    # nov2019exam
    {date=>'2019-05-01', summary=>'Early registration opened', tags=>['nov2019exam']},
    {date=>'2019-07-31', summary=>'Early registration closed', tags=>['nov2019exam']},
    {date=>'2019-08-01', summary=>'Standard registration opened', tags=>['nov2019exam']},
    {date=>'2019-08-31', summary=>'Standard registration closed', tags=>['nov2019exam']},
    {date=>'2019-09-01', summary=>'Late registration opened', tags=>['nov2019exam']},
    {date=>'2019-10-15', summary=>'Late registration closed', tags=>['nov2019exam']},
    {date=>'2019-10-15', summary=>'Defer deadline', tags=>['nov2019exam']},
    {date=>'2019-11-01', summary=>'Admission tickets released', tags=>['nov2019exam']},
    {date=>'2019-11-16', summary=>'Exam day', tags=>['nov2019exam']},
    {date=>'2020-01-02', summary=>'Exam results sent via email', tags=>['nov2019exam']},
);

1;
# ABSTRACT: FRM exam calendar

=head1 DESCRIPTION

This module provides FRM exam calendar using the L<Calendar::Dates> interface.


=head1 prepend:SEE ALSO

L<https://www.garp.org/#!/frm/program-exams>

L<https://en.wikipedia.org/wiki/Financial_risk_management>
