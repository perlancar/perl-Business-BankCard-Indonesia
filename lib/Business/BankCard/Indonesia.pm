package Business::BankCard::Indonesia;

use 5.010001;
use strict;
use warnings;

use Perinci::Sub::Gen::AccessTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_bank_card_prefixes
               );

our %SPEC;

# VERSION

# BEGIN FRAGMENT id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/idn_bank_card_prefix/data.csv
# src-revision: 716d080462f258a4a4a37ef0fd250035ef525d2b
# revision-date: Fri Jul 6 19:20:32 2012 +0700
# generate-date: Fri Jul  6 19:33:23 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-data-snippet
our $data = [
    ['410504','Kredit Visa BNI','67'],
    ['410505','Kredit Visa BNI','67'],
    ['410506','Kredit Visa BNI','67'],
    ['4377','Kredit Visa platinum Panin','129'],
    ['4760','Debit Visa CIMB Niaga','32'],
    ['5264','Debit Mastercard BNI','67'],
]
;
# END FRAGMENT id=data
# BEGIN FRAGMENT id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/idn_bank_card_prefix/meta.yaml
# src-revision: 716d080462f258a4a4a37ef0fd250035ef525d2b
# revision-date: Fri Jul 6 19:20:32 2012 +0700
# generate-date: Fri Jul  6 19:33:23 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-meta-snippet
our $meta = {
  "fields" => {
    ind_description => {
      "index" => 2,
      "schema" => "str*",
      "sortable" => 1,
      "summary" => "Description (in Indonesian)",
      "summary.alt.lang.id_ID" => "Keterangan (dalam bahasa Indonesia)",
      "unique" => 1,
    },
    issuer_id => {
      "description.alt.lang.id_ID" => "Lihat tabel idn_bank",
      "index" => 1,
      "schema" => "int*",
      "sortable" => 1,
      "summary" => "Issuer",
      "summary.alt.lang.id_ID" => "Penerbit",
    },
    prefix => {
      "description.alt.lang.id_ID" => "Umumnya berupa nama perusahaan.",
      "index" => 0,
      "schema" => ["str*", { match => "^\\d+\$", max_len => 6, min_len => 4 }],
      "sortable" => 1,
      "summary" => "Name",
      "summary.alt.lang.id_ID" => "Nama",
      "unique" => 1,
    },
  },
  "pk" => "prefix",
  "summary" => "Prefix of card numbers issued in Indonesia",
  "summary.alat.lang.id_ID" => "Prefiks nomor kartu yang diterbitkan di Indonesia",
}
;
# END FRAGMENT id=meta

my $res = gen_read_table_func(
    name => 'list_id_bank_card_prefixes',
    description => <<'_',

Data source is currently at https://github.com/sharyanto/gudangdata
(table/idn_bank_card_prefix).

_
    table_data => $data,
    table_spec => $meta,
    default_fields => ['prefix'],
    langs => ['en_US', 'id_ID'],
);
die "BUG: Can't generate func: $res->[0] - $res->[1]" unless $res->[0] == 200;

1;
# ABSTRACT: Utilities for dealing with bank card number issued in Indonesia

=head1 SYNOPSIS


=head1 DESCRIPTION

B<NOTE: This module is still in early development and incomplete.>

This module provides routines to deal with bank card number issued in Indonesia.


=head1 SEE ALSO

L<Business::BankCard>

=cut
