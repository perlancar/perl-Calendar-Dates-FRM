package Calendar::Dates::FRM;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Role::Tiny::With;

with 'Calendar::DatesRoles::DataPreparer::CalendarVar::FromData';
with 'Calendar::DatesRoles::DataUser::CalendarVar';

sub filter_entry {
    my ($self, $entry, $params) = @_;

    if (defined(my $mon = $params->{exam_month})) {
        $mon eq 'may' || $mon eq 'nov' or die "Invalid exam_month, please specify either may/nov";
        return 0 unless grep { /\A$mon/ } @{ $entry->{tags} // [] };
    }
    # exam_level has no effect currently, each exam date is relevant to both
    # levels/parts.
    1;
}

1;
# ABSTRACT: FRM exam calendar

=for Pod::Coverage ^(filter_entry)$

=head1 DESCRIPTION

This module provides FRM exam calendar using the L<Calendar::Dates> interface.


=head1 PARAMETERS

=head2 exam_month

Can be used to select dates related to a certain exam month only. Value is
either C<may> or C<nov>. Example:

 $entries = Calendar::Dates::FRM->get_entries({exam_month=>'nov'}, 2019);

=head2 exam_level

Can be used to select dates related to a certain exam level (part) only. Value
is either 1, 2.

 $entries = Calendar::Dates::FRM->get_entries({exam_level=>2}, 2019);


=head1 prepend:SEE ALSO

L<https://www.garp.org/#!/frm/program-exams>

L<https://en.wikipedia.org/wiki/Financial_risk_management>

=cut

__DATA__
# nov2018exam
2019-01-03;Exam results sent via email;nov2018exam

# may2019exam
2018-12-01;Early registration opened;may2019exam
2019-01-31;Early registration closed;may2019exam
2019-02-01;Standard registration opened;may2019exam
2019-02-28;Standard registration closed;may2019exam
2019-03-01;Late registration opened;may2019exam
2019-04-15;Late registration closed;may2019exam
2019-04-15;Defer deadline;may2019exam
2019-05-01;Admission tickets released;may2019exam
2019-05-18;Exam day;may2019exam
2019-06-28;Exam results sent via email;may2019exam

# nov2019exam
2019-05-01;Early registration opened;nov2019exam
2019-07-31;Early registration closed;nov2019exam
2019-08-01;Standard registration opened;nov2019exam
2019-08-31;Standard registration closed;nov2019exam
2019-09-01;Late registration opened;nov2019exam
2019-10-15;Late registration closed;nov2019exam
2019-10-15;Defer deadline;nov2019exam
2019-11-01;Admission tickets released;nov2019exam
2019-11-16;Exam day;nov2019exam
2020-01-02;Exam results sent via email;nov2019exam
