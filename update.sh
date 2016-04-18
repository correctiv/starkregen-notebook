set -ex

mkdir -p data

pushd data/
 
lftp -c 'open -e "mirror --verbose pub/CDC/observations_germany/climate/daily/more_precip/historical/ .; bye" ftp-cdc.dwd.de'

popd
