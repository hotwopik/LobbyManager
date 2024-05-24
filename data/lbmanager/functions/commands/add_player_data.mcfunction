$data modify storage lbmanager:main players."$(UUID)" set value $(team)
$data modify storage lbmanager:main teams.$(team).players append value {uuid:$(UUID)}