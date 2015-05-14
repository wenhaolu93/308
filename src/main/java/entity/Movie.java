package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Movie {
	public Movie(int movie_id, String movie_name, String description,
			String air_date, String length, String rating, String trailer,
			String image) {
		super();
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.description = description;
		this.air_date = air_date;
		this.length = length;
		this.rating = rating;
		this.trailer = trailer;
		this.image = image;
	}

	@Id
	@Column(name="movie_id")
	@GeneratedValue
	private int movie_id;
	
	@Column(name="movie_name")
	private String movie_name;
	
	@Column(name="description")
	private String description;
	
	@Column(name="air_date")
	private String air_date;
	
	@Column(name="length")
	private String length;
	
	@Column(name="rating")
	private String rating;
	
	@Column(name="trailer")
	private String trailer;
	
	@Column(name="image")
	private String image;
	
	public Movie(){
		
	}

	public int getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAir_date() {
		return air_date;
	}

	public void setAir_date(String air_date) {
		this.air_date = air_date;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
