#coding:utf-8

import tornado.web
import os.path
import tornado.ioloop

import app.common.commons

class BaseHandler(tornado.web.RequestHandler):
    def initialize(self):
        template_path = self.get_template_path()
        self.lookpu