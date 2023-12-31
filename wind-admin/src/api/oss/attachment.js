import request from '@/utils/request'

export function fetchAttachmentList(query) {
  return request({
    url: '/oss/attachment/list',
    method: 'get',
    params: query
  })
}

export function fetchAttachment() {
  return request({
    url: '/oss/attachment/detail',
    method: 'get'
  })
}

export function createAttachment(data) {
  return request({
    url: '/oss/attachment/add',
    method: 'post',
    data
  })
}

export function updateAttachment(data) {
  return request({
    url: '/oss/attachment/update',
    method: 'post',
    data
  })
}

export function testAttachment(data) {
  return request({
    url: '/oss/attachment/test',
    method: 'post',
    data
  })
}

export function deleteAttachment(ids) {
  return request({
    url: '/oss/attachment/delete',
    method: 'post',
    data: { ids }
  })
}

