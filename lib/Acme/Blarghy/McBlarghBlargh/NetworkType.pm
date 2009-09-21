package Acme::Blarghy::McBlarghBlargh::NetworkType;
use Moose;
use MooseX::Types::Moose qw/ Str /;
use Net::Twitter;

has 'network' => (
    is => 'ro',
    isa => Str,
    default => sub {
	    my ($network, $username, $password) = @_;
	    my $api_info;
	
	    if ( $network eq "Twitter" ) {
		    $api_info = "traits => [qw/API::REST/]";
	    } elsif ( $network eq "Facebook" ) {
		    die "Network not implemented yet\n";
	    } elsif ( $network eq "Plurk" ) {
		    die "Network not implemented\n";
	    }
	
	    $network->new(
		     $api_info, $username, $password
		);
	},
);

sub send {
	my ($self, $message) = @_;
	
	if ($self->network eq 'Twitter') {
		my $result = $self->network->update($message);
	}
	
}

1;