before do

@storylines = [
  { :guid => "ae6f063e-e5aa-42c4-bf38-5f894f8852e9", :label => "Autumn Statement 2013" }
]

@business_themes = [
  { :guid => "90e896ec-eca6-454d-a90d-6e2be9d6bd21", :label => "Aerospace" },
  { :guid => "5c0cd048-408c-444a-b783-8e12adedbe16", :label => "African economy" },
  { :guid => "332d553c-c200-4d46-b903-63ec682d8852", :label => "Asian economy" },
  { :guid => "cfb8bd8c-0638-4383-9dec-8d1703c8b4b8", :label => "Banking" },
  { :guid => "128555c7-c736-4e5d-b8aa-e016bd44a251", :label => "Benefits" },
  { :guid => "93a5bca0-1cc9-4b44-8f43-3e24b1dab7bc", :label => "Business of Sport" },
  { :guid => "db2aecd5-8532-4c12-ab0e-4cb56c31e16c", :label => "Business Management" },
  { :guid => "65ba56b4-3f50-4217-ab8e-b3c1fe890364", :label => "Car industry" },
  { :guid => "6cd2cbe5-d407-4904-9e49-6ca33574eb8d", :label => "Commodities" },
  { :guid => "9f52c5bc-73a7-47c8-a6b5-e70eafbf6716", :label => "Companies" },
  { :guid => "aabac3a1-0529-4e5a-b4d7-7849ffd419f9", :label => "Economic growth" },
  { :guid => "ca170ae3-99c1-48db-9b67-2866f85e7342", :label => "Economy" },
  { :guid => "fe536195-d9a5-40ff-89c4-f216213cfd9e", :label => "Energy" },
  { :guid => "41d87885-664f-4d92-931e-470b8fd7b16b", :label => "Entrepreneurship" },
  { :guid => "3525f630-ab85-473d-aebe-eb430bcbcfad", :label => "European economy" },
  { :guid => "91173495-d90c-4451-be72-23a1a823c8d2", :label => "Eurozone" },
  { :guid => "38a2903a-b068-486e-bda2-58c035e1490a", :label => "House market" },
  { :guid => "b0fb8550-de6e-4230-b00d-c55dedf1f91f", :label => "Inflation" },
  { :guid => "8368f9a7-76d1-4f42-bc22-60c79645ffd1", :label => "Investment" },
  { :guid => "ef48d0eb-5c56-4198-accc-a7ccca76ec50", :label => "Jobs" },
  { :guid => "afe5596a-f56c-4171-b2c2-14d0410a773b", :label => "Market Report" },
  { :guid => "c2350112-e7cb-4ade-b9ba-d124ff2cb745", :label => "Middle East economy" },
  { :guid => "986d714c-6f18-43ff-9f37-e4b0267aeaf9", :label => "Mobile phones" },
  { :guid => "6580e8e1-00d6-4355-9999-1e998cf7d63f", :label => "Pensions" },
  { :guid => "20111747-026a-4687-a5a7-0a0499746ac6", :label => "Personal finance" },
  { :guid => "37e67301-1f31-4e94-b2e0-f92e29834802", :label => "Retailing" },
  { :guid => "2c493367-e5a2-4c19-be5f-6e9342f5c591", :label => "Technology of business" },
  { :guid => "cec5d136-f83d-4e00-a3be-d22a7b89401f", :label => "Trade" },
  { :guid => "1947f3fd-ff95-4d71-b762-59b6c2f60fd1", :label => "UK economy" },
  { :guid => "6f694397-5780-47da-aaa9-fe9515e29eaf", :label => "US economy" }
]

@uk_companies = [
  { :guid => "6f02f0de-6535-471a-a342-e8cd4e157131", :label => "ARM Holdings", :marketSymbol => "ARM" },
  { :guid => "5250ca1e-7a0f-4dbe-ad72-b4c81f4662f6", :label => "AstraZeneca", :marketSymbol => "AZN" },
  { :guid => "ad0a44b9-964c-4029-9918-149788e53c6e", :label => "BAE Systems", :marketSymbol => "BA." },
  { :guid => "06b89b97-4d00-4054-b3c6-849a5073a9b6", :label => "Barclays", :marketSymbol => "BARC" },
  { :guid => "fb8c1ad0-5565-408d-9c31-514ee0a26ee3", :label => "BSkyB", :marketSymbol => "BSY" },
  { :guid => "780db412-8c63-474e-9142-bcdbac119d04", :label => "BT Group", :marketSymbol => "BT.A" },
  { :guid => "3b1830b4-a81c-462a-805a-288d0b0c9485", :label => "BP", :marketSymbol => "BP." },
  { :guid => "be1b3493-abc5-4aaf-bd91-6cd563162cd7", :label => "Burberry", :marketSymbol => "BRBY" },
  { :guid => "fd0eb3d4-37de-49c5-a3e7-795b6cfa35fd", :label => "Centrica (British Gas)", :marketSymbol => "CNA" },
  { :guid => "df8e7287-d871-4141-89a1-fe4082650a30", :label => "Co-operative Group" },
  { :guid => "1360a09d-6a49-4d84-855a-7c2c9c1acc96", :label => "Diageo", :marketSymbol => "DGE" },
  { :guid => "b7207437-f911-4df7-a179-17a6ec41b99a", :label => "Dixons Retail", :marketSymbol => "DXNS" },
  { :guid => "73327180-3031-4bb8-bdd0-bb13e22361ff", :label => "Easyjet", :marketSymbol => "EZJ" },
  { :guid => "abb24d63-1b4f-4ca7-af90-08cf1a25a7be", :label => "G4S", :marketSymbol => "GFS" },
  { :guid => "6839ee34-ccc8-4ae9-9948-a2aff86fda20", :label => "GlaxoSmithKline", :marketSymbol => "GSK" },
  { :guid => "5c9cb58c-01e3-4ce6-b36f-dcd9e26807bc", :label => "Home Retail Group (Argos)", :marketSymbol => "HOME" },
  { :guid => "e8d4d440-4429-49d5-83f6-44fe28938616", :label => "HSBC", :marketSymbol => "HSBA" },
  { :guid => "afc05a35-7d52-46a2-aada-c61dd417ae69", :label => "IAG (British Airways)", :marketSymbol => "IAG" },
  { :guid => "e6c1f385-3768-42aa-baf6-1b0be96be641", :label => "ITV", :marketSymbol => "ITV" },
  { :guid => "7ce4dadd-6a03-4653-9e93-d88e3998a195", :label => "John Lewis" },
  { :guid => "2dcecca5-303a-4d92-911c-7b4a9f0888ac", :label => "Lloyds Banking Group", :marketSymbol => "LLOY" },
  { :guid => "d4ec2662-755e-4ac3-a37a-921880b9d4a7", :label => "Marks &amp; Spencer", :marketSymbol => "MKS" },
  { :guid => "c54fa264-849e-42be-8891-15cb6f77ab52", :label => "Morrison Supermarkets", :marketSymbol => "MRW" },
  { :guid => "6d0fa186-2360-4b67-9c1c-75901786eee4", :label => "Nationwide Building Society" },
  { :guid => "ef61bd5b-5411-4540-9393-464ffb106e65", :label => "Next", :marketSymbol => "NXT" },
  { :guid => "9114048c-ca44-45c4-a0db-9ec14ecf902f", :label => "Ocado", :marketSymbol => "OCDO" },
  { :guid => "e9239956-3ad2-439f-a746-8de9be38c09e", :label => "RBS", :marketSymbol => "RBS" },
  { :guid => "454bb18e-27c3-462d-afe6-06cf25ca2237", :label => "Rolls-Royce", :marketSymbol => "RR." },
  { :guid => "0dde3095-8d8a-4153-98af-9966fb150335", :label => "Royal Dutch Shell", :marketSymbol => "RDSB" },
  { :guid => "4cd2dd9f-4320-4715-8644-bde5ae9c6e1e", :label => "Sainsbury's", :marketSymbol => "SBRY" },
  { :guid => "07df5e85-475c-43b8-94de-d15fb465d55f", :label => "Sports Direct", :marketSymbol => "SPD" },
  { :guid => "a2810be1-f5e1-478e-be15-c6aec1fbe23d", :label => "Tesco", :marketSymbol => "TSCO" },
  { :guid => "352c8814-fd7f-48af-a0a9-861991cc9152", :label => "Vodafone", :marketSymbol => "VOD" }
]

@uk_institutions = [
  { :guid => "dc727dc2-c991-46c2-b2ae-abd16446f8f2", :label => "Bank of England" },
  { :guid => "32b09260-c8f0-4517-9474-d6b9cff827be", :label => "Financial Conduct Authority (FCA)" },
  { :guid => "2806223b-c081-4bb1-a776-11de3a102e01", :label => "Monetary Policy Committee (MPC)" },
  { :guid => "398792c3-ba75-4fad-be36-01087ab3ae0d", :label => "Office for Budget Responsibility (OBR)" },
  { :guid => "9dc41dcc-3d4f-4db9-a575-c2fb104eebf6", :label => "Prudential Regulation Authority (PRA)" }
]

@international_companies = [
  { :guid => "ff8bffd4-feda-46c6-8e4f-2e2180816e9a", :label => "Activision Blizzard", :marketSymbol => "NASDAQ:ATVI" },
  { :guid => "73278709-3031-4505-ba9d-188a41eb097c", :label => "Alibaba", :marketSymbol => "XETRA:4AL" },
  { :guid => "8da727e1-7c50-4bb5-b768-8b7c695a8829", :label => "Amazon", :marketSymbol => "NASDAQ:AMZN" },
  { :guid => "92bcfc9f-bff2-4f1a-b38e-182542106fb9", :label => "Apple", :marketSymbol => "NASDAQ:AAPL" },
  { :guid => "fde08284-20d7-45f9-aba2-c1ec2034938f", :label => "Bank of America", :marketSymbol => "NYSE:BAC" },
  { :guid => "d843e8a6-14bd-4194-b0af-0ead627f5e69", :label => "BMW", :marketSymbol => "XETRA:BMW" },
  { :guid => "2a6d1b21-9872-430b-9a0d-7ea7a885dfcc", :label => "Blackberry", :marketSymbol => "NASDAQ:BBRY" },
  { :guid => "f96d36b3-603f-4fda-b344-cc2e54d07d52", :label => "Boeing", :marketSymbol => "NYSE:BA" },
  { :guid => "8d604128-b089-4fb6-b34d-1c01044b3e59", :label => "Citigroup", :marketSymbol => "NYSE:C" },
  { :guid => "1b648717-21a6-4742-8197-b252c1774ba8", :label => "Coca Cola", :marketSymbol => "NYSE:KO" },
  { :guid => "51eb298a-50d5-48a2-83dc-2b3be473aa26", :label => "Credit Suisse", :marketSymbol => "NYSE:CS" },
  { :guid => "300d5a54-0b16-46e4-ad9c-36f4aaebd756", :label => "Dell", :marketSymbol => "NASDAQ:DELL" },
  { :guid => "34a8901c-ee19-4541-8f2c-3ad8f560f34a", :label => "Deutsche Bank", :marketSymbol => "NYSE:DB" },
  { :guid => "6719e889-460e-4f8f-b760-4cbe3d0b5890", :label => "EADS (Airbus)", :marketSymbol => "PAR:EAD" },
  { :guid => "86796927-4301-4eb0-af98-74f62b37dbec", :label => "eBay", :marketSymbol => "NASDAQ:EBAY" },
  { :guid => "ae5900f2-6124-4306-8188-39e72f7bb877", :label => "Electronic Arts", :marketSymbol => "NASDAQ:EA" },
  { :guid => "6e9ed25d-2bab-4367-ac6f-5d09c979450c", :label => "Exxon Mobil", :marketSymbol => "NYSE:XOM" },
  { :guid => "3c3f3366-06ea-44fc-afa8-aa3bfac49a87", :label => "Facebook", :marketSymbol => "NASDAQ:FB" },
  { :guid => "a1eb8f2a-96c9-487e-ac92-cf2386f8d2e4", :label => "Ford", :marketSymbol => "NYSE:F" },
  { :guid => "ca2e7ecf-b792-4ab9-9ecc-5d3b3530eef1", :label => "GM", :marketSymbol => "NYSE:GM" },
  { :guid => "e149c4f3-7534-45fb-bd9d-42f309cef638", :label => "Goldman Sachs", :marketSymbol => "NYSE:GS" },
  { :guid => "4795be02-dfe8-4a8d-b318-0609533ae17a", :label => "Google", :marketSymbol => "NASDAQ:GOOG" },
  { :guid => "6409d55b-fcf5-4f36-9ad6-90d7322707e1", :label => "Groupon", :marketSymbol => "NASDAQ:GRPN" },
  { :guid => "1b381f01-7608-4482-b629-e43d39d452ef", :label => "Hewlett-Packard", :marketSymbol => "NYSE:HPQ" },
  { :guid => "a61843ab-8ea2-4c93-88cd-fbb29f1993bf", :label => "Huawei" },
  { :guid => "0299b667-7c98-489f-accf-6f654adade9d", :label => "IBM", :marketSymbol => "NYSE:IBM" },
  { :guid => "f650d44e-cd52-4d85-a150-9e54fcf72c41", :label => "JP Morgan", :marketSymbol => "NYSE:JPM" },
  { :guid => "b1715b32-ff92-4d9a-905e-190723f7a56c", :label => "LG" },
  { :guid => "9def085c-f5d3-48fe-a4b9-523f923d28bf", :label => "LinkedIn", :marketSymbol => "NYSE:LNKD" },
  { :guid => "359dd3d5-daab-4d9e-b216-ae795aa31e93", :label => "McDonald's", :marketSymbol => "NYSE:MCD" },
  { :guid => "a798cf4b-f4ba-4fa7-8315-5d51e603c363", :label => "Microsoft", :marketSymbol => "NASDAQ:MSFT" },
  { :guid => "6e129517-59c9-41b0-a1af-9e9feb26e9ce", :label => "Morgan Stanley", :marketSymbol => "NYSE:MS" },
  { :guid => "101b6006-87c5-465e-958c-a965484143c8", :label => "Netflix", :marketSymbol => "NASDAQ:NFLX" },
  { :guid => "727489fa-292a-4988-9c8d-b364dea593df", :label => "Nintendo", :marketSymbol => "XETRA:NTO" },
  { :guid => "b0bc0dc8-ac12-41e7-8f80-3e764a9d7683", :label => "Nissan" },
  { :guid => "ef6385ce-b000-42ef-8199-38ff0c3088f0", :label => "Nokia", :marketSymbol => "NYSE:NOK" },
  { :guid => "1d12bc83-c233-467d-ba38-9622697a14a7", :label => "Peugeot-Citroen", :marketSymbol => "PAR:UG" },
  { :guid => "2ce18d88-0578-445d-b062-5a278df64301", :label => "Renault", :marketSymbol => "PAR:RNO" },
  { :guid => "d4dfd925-94ec-41b0-9999-e4a5b6b12e25", :label => "Ryanair", :marketSymbol => "NASDAQ:RYAAY" },
  { :guid => "df5ae277-a7d6-4d51-ab4c-71c795acb75c", :label => "Samsung", :marketSymbol => "XETRA:SSU" },
  { :guid => "9dbb0043-eeb1-4b0d-9ae6-6ac0add89d9b", :label => "Sony", :marketSymbol => "NYSE:SNE" },
  { :guid => "77acfbae-6241-4150-9518-2a87cbb1b3c5", :label => "Spotify" },
  { :guid => "a963d677-a299-4002-bb3f-e81c8cf74c3d", :label => "Toyota", :marketSymbol => "NYSE:TM" },
  { :guid => "20b7b622-c5a1-42c3-a4ea-9154acf72eb7", :label => "Twitter" },
  { :guid => "5fa72e64-ba83-4c83-9d7e-dbce082637c9", :label => "UBS", :marketSymbol => "NYSE:UBS" },
  { :guid => "60e9f197-2f48-4ded-8383-ba6f3004bc6c", :label => "VW", :marketSymbol => "XETRA:VOW" },
  { :guid => "03682b83-aa22-4b12-a447-e14edd2bee22", :label => "Wal-Mart", :marketSymbol => "NYSE:WMT" },
  { :guid => "011d3724-9f50-4282-a8e3-65ee12d58f3f", :label => "Yahoo!", :marketSymbol => "NASDAQ:YHOO" },
  { :guid => "f6dce574-9e1a-416f-85b4-221f5fe7b6f0", :label => "Zynga", :marketSymbol => "NASDAQ:ZNGA" }
]

@international_institutions = [
  { :guid => "52845385-ad5c-4f3b-b86a-477b9b2d3570", :label => "European Central Bank (ECB)" },
  { :guid => "84bab5a3-426e-4051-86a3-00f0b085ef8e", :label => "International Monetary Fund (IMF)" },
  { :guid => "924b274a-9470-4663-9dac-86faaa4c643a", :label => "Organisation for Economic Co-operation and Development (OECD)" },
  { :guid => "41a4a20a-046f-464e-a4cf-1b993b0785a6", :label => "US Federal Reserve" },
  { :guid => "d96b284b-8461-41b5-b96e-33b6297565f5", :label => "World Bank" }  
]

end
  
