$ErrorActionPreference = 'Stop'
$out = $PSScriptRoot
New-Item -ItemType Directory -Force -Path $out | Out-Null
$boxes = @(
 @{box=@{id='memo'; maxclass='textedit'; numinlets=1; numoutlets=3; outlettype=@('','',''); patching_rect=@(10,30,240,130); presentation=1; presentation_rect=@(8,26,244,133); text=''; fontname='Yu Gothic UI'; fontsize=13.0; bgcolor=@(0.16,0.17,0.18,1); textcolor=@(0.94,0.94,0.92,1); bordercolor=@(0.36,0.38,0.4,1); border=1.0; rounded=4.0; keymode=0; tabmode=1; wordwrap=1; autoscroll=1; outputmode=1; valuemode=0; parameter_enable=1; parameter_mappable=0; varname='Memo'; saved_attribute_attributes=@{valueof=@{parameter_longname='Memo'; parameter_shortname='Memo'; parameter_type=3; parameter_invisible=1; parameter_initial_enable=0}}}},
 @{box=@{id='title';maxclass='comment';numinlets=1;numoutlets=0;patching_rect=@(10,5,240,20);presentation=1;presentation_rect=@(8,4,244,20);text='MEMO';fontname='Arial';fontsize=11.0;fontface=1;textcolor=@(0.75,0.78,0.8,1)}},
 @{box=@{id='in';maxclass='newobj';numinlets=2;numoutlets=2;outlettype=@('signal','signal');patching_rect=@(20,220,60,22);text='plugin~'}},
 @{box=@{id='out';maxclass='newobj';numinlets=2;numoutlets=2;outlettype=@('signal','signal');patching_rect=@(20,290,60,22);text='plugout~'}}
)
$patch = @{patcher=@{fileversion=1;appversion=@{major=8;minor=1;revision=2;architecture='x64';modernui=1};classnamespace='box';rect=@(100,100,440,350);openrect=@(0,0,260,169);openinpresentation=1;devicewidth=260.0;bgcolor=@(0.12,0.13,0.14,1);default_fontname='Arial';default_fontsize=12.0;boxes=$boxes;lines=@(@{patchline=@{source=@('in',0);destination=@('out',0)}},@{patchline=@{source=@('in',1);destination=@('out',1)}});parameters=@{memo=@('Memo','Memo',0);parameterbanks=@{};inherited_shortname=1};dependency_cache=@();latency=0;autosave=0}}
$json = $patch | ConvertTo-Json -Depth 30
$utf8 = [Text.UTF8Encoding]::new($false)
[IO.File]::WriteAllText((Join-Path $out 'Live Memo.maxpat'), $json, $utf8)
$payload = $utf8.GetBytes($json + [char]0)
$stream = [IO.MemoryStream]::new()
$writer = [IO.BinaryWriter]::new($stream)
$writer.Write([Text.Encoding]::ASCII.GetBytes('ampf'))
$writer.Write([int]4)
$writer.Write([Text.Encoding]::ASCII.GetBytes('aaaa'))
$writer.Write([Text.Encoding]::ASCII.GetBytes('meta'))
$writer.Write([int]4)
$writer.Write([int]0)
$writer.Write([Text.Encoding]::ASCII.GetBytes('ptch'))
$writer.Write([int]$payload.Length)
$writer.Write($payload)
[IO.File]::WriteAllBytes((Join-Path $out 'Live Memo.amxd'), $stream.ToArray())
$writer.Dispose()
$stream.Dispose()
$read = [IO.File]::ReadAllBytes((Join-Path $out 'Live Memo.amxd'))
if ([BitConverter]::ToInt32($read,28) -ne $read.Length-32) { throw 'Incorrect AMXD payload length' }
$parsed = $utf8.GetString($read,32,$read.Length-33) | ConvertFrom-Json
if ($parsed.patcher.lines.Count -ne 2 -or $parsed.patcher.boxes[0].box.parameter_enable -ne 1) { throw 'Invalid patch configuration' }
Write-Output "Created and structurally verified: $out"
