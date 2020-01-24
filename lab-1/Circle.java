public class Circle{

	public static final double DEFAULT_RADIUS = 8.8;
	public static final String DEFAULT_COLOUR = "red";

	private double radius;
	private String colour;
	
	public Circle(){
		this.radius = DEFAULT_RADIUS;
		this.colour = DEFAULT_COLOUR;
	}

	public Circle(double radius){
		this.radius = radius;
		this.colour = DEFAULT_COLOUR;
	}

	public Circle(double radius, String colour){
		this.radius = radius;
		this.colour = colour;
	}

	public double getRadius(){
		return this.radius;
	}

	public String getColour(){
		return this.colour;
	}

	public void setRadius(double radius){
		this.radius = radius;
	}

	public void setColour(String colour){
		this.colour = colour;
	}

	public double getArea(){
		return radius*radius*Math.PI;
	}

	public double getCircumference(){
		return 2.0*radius*Math.PI;
	}

	public String toString(){
		return "Circle[radius=" + radius + ", color=" + colour + "]";
	}


}
