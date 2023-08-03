$data modify storage mcpaint:calc colour.to_segment.hex set from storage mcpaint:calc colour.hex_lookup_table[$(colour)]
$data modify storage mcpaint:calc colour.to_segment.text set from storage mcpaint:calc colour.segment_opaque_table[$(length)]
function mcpaint:colour/internal/to_segment/opaque_text with storage mcpaint:calc colour.to_segment