# https://github.com/elastic/metricbeat/blob/master/etc/metricbeat.yml
# https://www.elastic.co/guide/en/beats/metricbeat/current/index.html
#
default['metricbeat']['config'] = {
  'metricbeat.config.modules': {
    'path': '${path.config}/modules.d/*.yml',
    'reload.enabled': true
  },
  'setup.template.settings': {
    'index.number_of_shards': 1,
    'index.codec': 'best_compression'
  },
  'logging.level': 'info',
  'logging.to_files': true,
  'logging.files': {
    'keepfiles': 7
  },
  'xpack.monitoring.enabled': false
}

default['metricbeat']['config']['output.logstash'] = {}
default['metricbeat']['config']['xpack.monitoring.elasticsearch'] = nil
