use Renard::Incunabula::Common::Setup;
package Renard::API::MuPDF::Pixmap;
# ABSTRACT: Pixmap

use Renard::API::MuPDF;
use Mu;

classmethod new_from_page_number( :$document, :$page, :$matrix, :$colorspace, :$alpha = 0 ) {
	my $pixmap = bless {}, $class;
	$document->new_pixmap_from_page_number(
		$page, $matrix, $colorspace, 0,
		$pixmap
	);
	$pixmap;
}

1;
