require 'time_error'

RSpec.describe TimeError do
    it "get the time difference" do
        fake_requester = double :requester
        # create fake fixed response from API:
        allow(fake_requester).to receive(:get)
        .with(URI("https://worldtimeapi.org/api/ip"))
        .and_return('{"abbreviation":"GMT","client_ip":"2.27.248.44","datetime":"2022-11-16T16:18:37.249103+00:00","day_of_week":3,"day_of_year":320,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668615517,"utc_datetime":"2022-11-16T16:18:37.249103+00:00","utc_offset":"+00:00","week_number":46}')
        time = Time.new(2022, 11, 16, 16, 18, 37)
        error = TimeError.new(fake_requester)
        expect(error.error(time)).to eq 0.249103
    end
end