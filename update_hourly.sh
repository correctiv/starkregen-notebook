set -ex

mkdir -p data_hourly

pushd data_hourly/
 
lftp -c 'open -e "mirror --verbose pub/CDC/observations_germany/climate/hourly/precipitation/historical/ .; bye" ftp-cdc.dwd.de'

popd
