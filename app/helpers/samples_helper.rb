module SamplesHelper

	def state_class(sample)
		if sample.state == 'Out'
			'warning'
		elsif sample.state == 'Out suspect back'
			'info'
		elsif sample.state == 'Lost'
			'error'
		elsif sample.state == 'Need SEM/Raman'
			'success'
		else 
			'default'
		end
	end

	def default_pic(sample)
		if sample.pic?
			 image_tag sample.pic_url
		else
			 image_tag 'sample_def.jpg'
		end
	end

	def default_pic_index(sample)
		if sample.pic?
			 image_tag sample.pic_url(:thumb)
		else
			 image_tag 'sample_def.jpg'
		end
	end


end
