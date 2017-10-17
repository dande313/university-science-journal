# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create ([{ name: 'Astronomy' }, { name: 'Biology' }, { name: 'Chemistry' }, { name: 'Geology' }, { name: 'Psychology' }])

User.create ([
			{ name: 'Dr. Albert Einstein', username: 'Einstein', email:'al@smarterthanyou.net', password: 'abc123', password_confirmation: 'abc123', department_id: 1, professor: true}, 
			{ name: 'Dr. Jeckyll', username: 'Hyde', email:'JnH@aol.com', password: 'abc123', password_confirmation: 'abc123', department_id: 2, professor: true},
			{ name: 'Dr. Horrible', username: 'Harris', email:'Handsome@aol.com', password: 'abc123', password_confirmation: 'abc123', department_id: 3, professor: true},
			{ name: 'Kim Jong Un', username: 'Kimmy', email:'CheeseNWhiskey@NKorea.net', password: 'abc123', password_confirmation: 'abc123', department_id: 3, professor: false},
			{ name: 'Billy Grams', username: 'Billy', email:'billyG@aol.com', password: 'abc123', password_confirmation: 'abc123', department_id: 4, professor: false},
			{ name: 'Susan Smith', username: 'Sue', email:'Suuuuusan@aol.com', password: 'abc123', password_confirmation: 'abc123', department_id: 2, professor: false},
			{ name: 'Allen Anderson', username: 'dande313', email:'dande313@aol.com', password: 'abc123', password_confirmation: 'abc123', department_id: 1, professor: true},
	])

Article.create ([
			{ name: 'Particle creation by black holes', 
			description: 'The metric expansion of space is the increase of the distance between two distant parts of the universe with time. It is an intrinsic expansion whereby the scale of space itself changes. It means that the early universe did not expand "into" anything and does not require space to exist "outside" the universe - instead space itself changed, carrying the early universe with it as it grew. This is a completely different kind of expansion than expansions and explosions we see in daily life. It also seems to be a property of the entire universe as a whole rather than a phenomenon that applies just to one part of the universe or can be observed from "outside" it.', 
			link:'https://link.springer.com/article/10.1007/bf02345020', 
			user_id: 1},

			{ name: 'Black Holes and Entropy', 
			description: 'There are a number of similarities between black-hole physics and thermodynamics. Most striking is the similarity in the behaviors of black-hole area and of entropy: Both quantities tend to increase irreversibly. In this paper we make this similarity the basis of a thermodynamic approach to black-hole physics. After a brief review of the elements of the theory of information, we discuss black-hole physics from the point of view of information theory. We show that it is natural to introduce the concept of black-hole entropy as the measure of information about a black-hole interior which is inaccessible to an exterior observer. Considerations of simplicity and consistency, and dimensional arguments indicate that the black-hole entropy is equal to the ratio of the black-hole area to the square of the Planck length times a dimensionless constant of order unity. A different approach making use of the specific properties of Kerr black holes and of concepts from information theory leads to the same conclusion, and suggests a definite value for the constant. The physical content of the concept of black-hole entropy derives from the following generalized version of the second law: When common entropy goes down a black hole, the common entropy in the black-hole exterior plus the black-hole entropy never decreases. The validity of this version of the second law is supported by an argument from information theory as well as by several examples.', 
			link:'https://journals.aps.org/prd/abstract/10.1103/PhysRevD.7.2333', 
			user_id: 1},

			{ name: 'Evolutionary Psychology: A New Paradigm for Psychological Science', 
			description: 'Psychological science is currently in conceptual disarray, characterized by unconnected mini-theories and isolated empirical findings. We lack a theory of the functional properties of the human mind that could provide the needed integration—a theory about what the mechanisms of mind are "designed" to do. Evolutionary psychology provides the conceptual tools for emerging from this fragmented state. In this target article, I outline the fundamental premises of evolutionary psychology; illustrate the application of evolutionary psychology to domains such as reasoning, social exchange, language, aggression, jealousy, sex, and status; and then consider the implications of evolutionary psychology for the key branches of social, personality, developmental, and cognitive psychology and suggest ways in which these disciplinary boundaries can be transcended. I conclude by looking at the emergence of evolutionary psychology as our field matures into the 21st century.',
			link:'http://www.tandfonline.com/doi/abs/10.1207/s15327965pli0601_1', 
			user_id: 2},

			{ name: 'The effects of Aconitum alkaloids on the central nervous system', 
			description: 'Psychological science is currently in conceptual disarray, characterized by unconnected mini-theories and isolated empirical findings. We lack a theory of the functional properties of the human mind that could provide the needed integration—a theory about what the mechanisms of mind are "designed" to do. Evolutionary psychology provides the conceptual tools for emerging from this fragmented state. In this target article, I outline the fundamental premises of evolutionary psychology; illustrate the application of evolutionary psychology to domains such as reasoning, social exchange, language, aggression, jealousy, sex, and status; and then consider the implications of evolutionary psychology for the key branches of social, personality, developmental, and cognitive psychology and suggest ways in which these disciplinary boundaries can be transcended. I conclude by looking at the emergence of evolutionary psychology as our field matures into the 21st century.',
			link:'http://www.sciencedirect.com/science/article/pii/S0301008298000379', 
			user_id: 2},

			{ name: 'Spontaneous-combustion propensity of New Zealand coals under adiabatic conditions', 
			description: 'Pulverised New Zealand coal samples have been tested from an initial temperature of 40°C and reacted adiabatically in an oven with oxygen to provide a full temperature history of auto-oxidation up to the self-sustained process of combustion. This procedure produces a self-heating rate index, R70, calculated as the ratio of the time taken to reach 70°C (°C/h). The R70 index is a measure of the coals propensity to spontaneous combustion. R70 values for New Zealand coals are much higher than any previously published results. They show a rank dependence, whereby subbituminous coals have the highest propensity to spontaneous combustion (14.91–17.23°C/h). A lignite sample has an R70 value of 7.76°C/h, and high-volatile bituminous B coals have R70 values of 0.31–2.23°C/h. Samples stored for 2 years show the same rank trend. The nature of this trend is most likely a function of the internal surface area of the coal that governs the available sites for oxidation. Calculating the Suggate rank for any New Zealand coal can be used to rate its propensity to spontaneous combustion. Resin bodies in the subbituminous coal show no propensity to spontaneous combustion.',
			link:'http://www.sciencedirect.com/science/article/pii/S0166516200000343', 
			user_id: 3},

			{ name: 'The Strongest Isolable Acid', 
			description: 'Acids based on carborane anions as conjugate bases (Figure 1) are a new class of Brønsted (protic) acids, notable for their “strong yet gentle” qualities.1 For example, whereas conventional strong acids (e.g. H2SO4) and superacids (e.g. HFSO3/SbF5) decompose fullerenes even at low temperatures, the carborane acid H(CHB11H5Cl6) cleanly protonates C60 at room temperature to give the isolable salt [HC60][CHB11H5Cl6]. We now show that carborane acids are the strongest isolable (Lewis-free) Brønsted acids presently known.',
			link:'http://www.sciencedirect.com/science/article/pii/S0166516200000343', 
			user_id: 3},


			{ name: 'Nukes of our Proud Nation', 
			description: 'First of all, thanks to that really annoying thing called E = MC², you need a big mass to make a big boom. Therefore, we need something like uranium, which would have greater mass. Hence, we would have to add Uranium into the game.
			Uranium would be found at level 10 or lower. For each chunk generated, it would have a 0.01 percent chance of having a Uranium vein of 3-4 blocks. Uranium will do 5 hearts of damage every 5 seconds it is in the korea inventory, unless the player is wearing a suit of full diamond armor, which is the minecraft version of a HAZOP suit. 
			Once the uranium ore has been transported back to base, it is time to extract the uranium from the other unwanted bits, or purification. I really have no idea how to purify it, and if I did, I would most likely get a knock on the door at midnight, and then be dragged off the they state police and "disappear", never to play minecraft again.',
			link:'http://www.instructables.com/id/TNT-Nuke-Minecraft-PE/', 
			user_id: 4},

			{ name: 'An Acylation Cycle Regulates Localization and Activity of Palmitoylated Ras Isoforms', 
			description: 'We show that the specific subcellular distribution of H- and Nras guanosine triphosphate–binding proteins is generated by a constitutive de/reacylation cycle that operates on palmitoylated proteins, driving their rapid exchange between the plasma membrane (PM) and the Golgi apparatus. Depalmitoylation redistributes farnesylated Ras in all membranes, followed by repalmitoylation and trapping of Ras at the Golgi, from where it is redirected to the PM via the secretory pathway. This continuous cycle prevents Ras from nonspecific residence on endomembranes, thereby maintaining the specific intracellular compartmentalization. The de/reacylation cycle also initiates Ras activation at the Golgi by transport of PM-localized Ras guanosine triphosphate. Different de/repalmitoylation kinetics account for isoform-specific activation responses to growth factors.',
			link:'http://www.sciencedirect.com/science/article/pii/S0166516200000343', 
			user_id: 5},

			{ name: 'An Acylation Cycle Regulates Localization and Activity of Palmitoylated Ras Isoforms', 
			description: 'To assess the efficacy of both natural products (vinegar, baking soda) and common commercial disinfectants (Vesphene Ilse, TBQ, Clorox, Lysol Disinfectant Spray, Lysol Antibacterial Kitchen Cleaner, Mr. Clean Ultra, ethanol) designed for home or institutional use against potential human pathogens, including selected antibiotic-resistant bacteria.
			A quantitative suspension test was used to assess the efficacy of selected disinfectants following exposure times of 30 seconds and 5 minutes. Activity was assessed against Staphylococcus aureus, Salmonella choleraesuis, Escherichia coli 0157:H7, and Pseudomonas aeruginosa. Selected disinfectants were also tested against poliovirus, vancomycin-susceptible and -resistant Enterococcus species, and methicillin-susceptible and -resistant S aureus.',
			link:'https://www.cambridge.org/core/journals/infection-control-and-hospital-epidemiology/article/antimicrobial-activity-of-home-disinfectants-and-natural-products-against-potential-human-pathogens/6D70C6F5E3928DDB3365FB9AF7CCD8E9', 
			user_id: 6},
	])

	

Topic.create ([
	{ name: 'Black Holes', department_id: 1},
	{ name: 'Moons', department_id: 1},
	{ name: 'Galaxies', department_id: 1},
	{ name: 'Astrophysics', department_id: 1},
	{ name: 'Animal Biology', department_id: 2},
	{ name: 'Plant Biology', department_id: 2},
	{ name: 'Geneitcs', department_id: 2},
	{ name: 'Physiology', department_id: 2},
	{ name: 'Biochemistry', department_id: 3},
	{ name: 'Combustibles', department_id: 3},
	{ name: 'Inorganic Chemistry', department_id: 3},
	{ name: 'Organic Chemistry', department_id: 3},
	{ name: 'Geologic Records', department_id: 4},
	{ name: 'Sedimentary Rocks', department_id: 4},
	{ name: 'Soil Science', department_id: 4},
	{ name: 'Volcanos', department_id: 4},
	{ name: 'Cognition', department_id: 5},
	{ name: 'Metaphysics', department_id: 5},
	{ name: 'Psychophysiology', department_id: 5},
	{ name: 'Sociology', department_id: 5},
	])


