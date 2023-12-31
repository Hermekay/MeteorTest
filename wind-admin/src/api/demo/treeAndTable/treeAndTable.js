import request from '@/utils/request'

export function fetchTreeAndTableList(data) {
  return request({
    url: '/test/treeandtable/treeandtable/list',
    method: 'post',
    data
  })
}

export function getTreeAndTable(id) {
  return request({
    url: '/test/treeandtable/treeandtable/detail/' + id,
    method: 'get'
  })
}

export function createTreeAndTable(data) {
  return request({
    url: '/test/treeandtable/treeandtable/add',
    method: 'post',
    data
  })
}

export function updateTreeAndTable(data) {
  return request({
    url: '/test/treeandtable/treeandtable/update',
    method: 'post',
    data
  })
}

export function deleteTreeAndTable(ids) {
  return request({
    url: '/test/treeandtable/treeandtable/delete',
    method: 'post',
    data: { ids }
  })
}
