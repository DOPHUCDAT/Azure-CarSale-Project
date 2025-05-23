create or alter procedure [dbo].[UpdateWaterMark]
	@lastload varchar(200)
as
begin
	begin transaction
	update watermark
	set last_load = @lastload
	commit transaction
end
