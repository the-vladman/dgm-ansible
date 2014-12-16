mkdir -p local/ckanext-dgm
git clone https://github.com/mxabierto/ckanext-dgm.git local/ckanext-dgm &&
vagrant plugin install vagrant-vbguest &&
vagrant up
