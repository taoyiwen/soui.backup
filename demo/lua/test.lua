function onEvtTest2(sender)
	SMessageBox(0,L "onEvtTest2", L "msgbox", 1);
	return 1;
end

function onEvtTstClick(args)
	local txt3=SStringW(L"append",-1);
	local sender=args.sender;
	local luabtn=sender:GetParent():CreateChildrenFromString(L"<button pos=\"0,0,150,30\" class=\"normalbtn\" id=\"12321\" show=\"1\">lua btn 中文</button>");
	local scriptmod=theApp():GetScriptModule();
	local txt=luabtn:GetWindowText();
	local txt2=txt:Left(5);
	txt2:AppendStr(txt3);
	local txt4 = SStringW(txt2);
	scriptmod:subscribeEvent(luabtn,10000,"onEvtTest2");
	sender:SetVisible(0,1);
	return 1;
end
