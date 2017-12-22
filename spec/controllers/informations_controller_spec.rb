describe InformationsController do
  describe 'POST :create' do
    context 'valid info' do
      subject { post :create, params: { text: 'some info' } }

      before { request.env['HTTP_REFERER'] = "http://example.com" }

      it 'creates information record' do
        expect { subject }.to change { Information.count }.by 1
      end
    end

    context 'invalid info' do
      subject { post :create, params: { text: '' } }

      before { request.env['HTTP_REFERER'] = "http://example.com" }

      it 'creates information record' do
        expect { subject }.to_not change { Information.count }
      end
    end    
  end
end
