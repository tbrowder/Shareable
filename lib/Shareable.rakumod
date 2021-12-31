use Storable::Lite;

unit class Shareable does FileStore;

my $dir = %*ENV<HOME> // '.';
my $storefile = $dir ~ '/' ~ '.Shareable-store-file'; 

multi new(:$store-file) {
    $storefile = $store-file 
}

method set-store-file($path) {
    unlink $storefile;
    $storefile = $path 
}

method show-store {
    $storefile
}

# methods to deal with persistent state
#| save current state
method save {
    self.to-file($storefile);
}

#| create new from current state
method new-from {
    from-file $storefile
}

