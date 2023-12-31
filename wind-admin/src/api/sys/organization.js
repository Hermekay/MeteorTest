import request from '@/utils/request'

export function fetchOrganizationList(query) {
  return request({
    url: '/sys/organization/list',
    method: 'get',
    params: query
  })
}
export function fetchOrganization(id) {
  return request({
    url: '/sys/organization/detail/' + id,
    method: 'get'
  })
}

export function createOrganization(data) {
  return request({
    url: '/sys/organization/add',
    method: 'post',
    data
  })
}

export function updateOrganization(data) {
  return request({
    url: '/sys/organization/update',
    method: 'post',
    data
  })
}

export function deleteOrganization(ids) {
  return request({
    url: '/sys/organization/delete',
    method: 'post',
    data: { ids }
  })
}

