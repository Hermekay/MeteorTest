import request from '@/utils/request'

export function fetchTreeTableList(data) {
  return request({
    url: '/test/treetable/treetable/list',
    method: 'post',
    data
  })
}

export function getTreeTable(id) {
  return request({
    url: '/test/treetable/treetable/detail/' + id,
    method: 'get'
  })
}

export function createTreeTable(data) {
  return request({
    url: '/test/treetable/treetable/add',
    method: 'post',
    data
  })
}

export function updateTreeTable(data) {
  return request({
    url: '/test/treetable/treetable/update',
    method: 'post',
    data
  })
}

export function deleteTreeTable(ids) {
  return request({
    url: '/test/treetable/treetable/delete',
    method: 'post',
    data: { ids }
  })
}
