%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin

# declaring a mapping called pixel_color_storage. for each set of coordinates (x,y), we store a color value.
# Each color is the felt conversion of HEX codes. 
@storage_var
func pixel_colors_storage(x: felt, y: felt) -> (color: felt):
end


# declaring a getter for our pixel mapping. It takes the set of coordinates (x,y) as a parameter and outputs the color of the pixel
@view
func pixel_colors{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(
    x: felt,
    y: felt
) -> (color: felt):
    let (pixel_color) = pixel_colors_storage.read(x, y)
    return(pixel_color)
end


# WIP, what the hell do I need to input
@constructor
func constructor{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(

):
    return ()
end