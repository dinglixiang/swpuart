#encoding:utf-8
class SessionsController < Devise::RegistrationsController
	def index
		:layout => false
	end
	def new
		:layout => false
	end
	def create
		:layout => false
	end
end