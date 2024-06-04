--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (571, 2022, 'Final', 201, 202, 3, 3);
INSERT INTO public.games VALUES (572, 2022, 'Third Place', 203, 204, 2, 1);
INSERT INTO public.games VALUES (573, 2022, 'Semi-Final', 201, 203, 3, 0);
INSERT INTO public.games VALUES (574, 2022, 'Semi-Final', 202, 204, 2, 0);
INSERT INTO public.games VALUES (575, 2022, 'Quarter-Final', 203, 205, 1, 1);
INSERT INTO public.games VALUES (576, 2022, 'Quarter-Final', 201, 206, 2, 2);
INSERT INTO public.games VALUES (577, 2022, 'Quarter-Final', 204, 207, 1, 0);
INSERT INTO public.games VALUES (578, 2022, 'Quarter-Final', 202, 208, 2, 1);
INSERT INTO public.games VALUES (579, 2022, 'Eighth-Final', 206, 209, 3, 1);
INSERT INTO public.games VALUES (580, 2022, 'Eighth-Final', 201, 210, 2, 1);
INSERT INTO public.games VALUES (581, 2022, 'Eighth-Final', 202, 211, 3, 1);
INSERT INTO public.games VALUES (582, 2022, 'Eighth-Final', 208, 212, 3, 0);
INSERT INTO public.games VALUES (583, 2022, 'Eighth-Final', 213, 203, 1, 1);
INSERT INTO public.games VALUES (584, 2022, 'Eighth-Final', 205, 214, 4, 1);
INSERT INTO public.games VALUES (585, 2022, 'Eighth-Final', 204, 215, 0, 0);
INSERT INTO public.games VALUES (586, 2022, 'Eighth-Final', 207, 216, 6, 1);
INSERT INTO public.games VALUES (587, 2018, 'Final', 202, 203, 4, 2);
INSERT INTO public.games VALUES (588, 2018, 'Third Place', 217, 208, 2, 0);
INSERT INTO public.games VALUES (589, 2018, 'Semi-Final', 203, 208, 2, 1);
INSERT INTO public.games VALUES (590, 2018, 'Semi-Final', 202, 217, 1, 0);
INSERT INTO public.games VALUES (591, 2018, 'Quarter-Final', 203, 218, 3, 2);
INSERT INTO public.games VALUES (592, 2018, 'Quarter-Final', 208, 219, 2, 0);
INSERT INTO public.games VALUES (593, 2018, 'Quarter-Final', 217, 205, 2, 1);
INSERT INTO public.games VALUES (594, 2018, 'Quarter-Final', 202, 220, 2, 0);
INSERT INTO public.games VALUES (595, 2018, 'Eighth-Final', 208, 221, 2, 1);
INSERT INTO public.games VALUES (596, 2018, 'Eighth-Final', 219, 216, 1, 0);
INSERT INTO public.games VALUES (597, 2018, 'Eighth-Final', 217, 213, 3, 2);
INSERT INTO public.games VALUES (598, 2018, 'Eighth-Final', 205, 222, 2, 0);
INSERT INTO public.games VALUES (599, 2018, 'Eighth-Final', 203, 223, 2, 1);
INSERT INTO public.games VALUES (600, 2018, 'Eighth-Final', 218, 215, 2, 1);
INSERT INTO public.games VALUES (601, 2018, 'Eighth-Final', 220, 207, 2, 1);
INSERT INTO public.games VALUES (602, 2018, 'Eighth-Final', 202, 201, 4, 3);
INSERT INTO public.games VALUES (603, 2014, 'Final', 224, 201, 1, 0);
INSERT INTO public.games VALUES (604, 2014, 'Third Place', 206, 205, 3, 0);
INSERT INTO public.games VALUES (605, 2014, 'Semi-Final', 201, 206, 1, 0);
INSERT INTO public.games VALUES (606, 2014, 'Semi-Final', 224, 205, 7, 1);
INSERT INTO public.games VALUES (607, 2014, 'Quarter-Final', 206, 225, 1, 0);
INSERT INTO public.games VALUES (608, 2014, 'Quarter-Final', 201, 217, 1, 0);
INSERT INTO public.games VALUES (609, 2014, 'Quarter-Final', 205, 221, 2, 1);
INSERT INTO public.games VALUES (610, 2014, 'Quarter-Final', 224, 202, 1, 0);
INSERT INTO public.games VALUES (611, 2014, 'Eighth-Final', 205, 226, 2, 1);
INSERT INTO public.games VALUES (612, 2014, 'Eighth-Final', 221, 220, 2, 0);
INSERT INTO public.games VALUES (613, 2014, 'Eighth-Final', 202, 227, 2, 0);
INSERT INTO public.games VALUES (614, 2014, 'Eighth-Final', 224, 228, 2, 1);
INSERT INTO public.games VALUES (615, 2014, 'Eighth-Final', 206, 222, 2, 1);
INSERT INTO public.games VALUES (616, 2014, 'Eighth-Final', 225, 229, 2, 1);
INSERT INTO public.games VALUES (617, 2014, 'Eighth-Final', 201, 216, 1, 0);
INSERT INTO public.games VALUES (618, 2014, 'Eighth-Final', 217, 209, 2, 1);
INSERT INTO public.games VALUES (619, 2010, 'Final', 215, 206, 1, 0);
INSERT INTO public.games VALUES (620, 2010, 'Third Place', 224, 220, 3, 2);
INSERT INTO public.games VALUES (621, 2010, 'Semi-Final', 206, 220, 3, 2);
INSERT INTO public.games VALUES (622, 2010, 'Semi-Final', 215, 224, 1, 0);
INSERT INTO public.games VALUES (623, 2010, 'Quarter-Final', 220, 230, 1, 1);
INSERT INTO public.games VALUES (624, 2010, 'Quarter-Final', 206, 205, 2, 1);
INSERT INTO public.games VALUES (625, 2010, 'Quarter-Final', 224, 201, 4, 0);
INSERT INTO public.games VALUES (626, 2010, 'Quarter-Final', 215, 231, 1, 0);
INSERT INTO public.games VALUES (627, 2010, 'Eighth-Final', 220, 214, 2, 1);
INSERT INTO public.games VALUES (628, 2010, 'Eighth-Final', 230, 209, 2, 1);
INSERT INTO public.games VALUES (629, 2010, 'Eighth-Final', 206, 232, 2, 1);
INSERT INTO public.games VALUES (630, 2010, 'Eighth-Final', 205, 226, 3, 0);
INSERT INTO public.games VALUES (631, 2010, 'Eighth-Final', 201, 222, 3, 1);
INSERT INTO public.games VALUES (632, 2010, 'Eighth-Final', 224, 208, 4, 1);
INSERT INTO public.games VALUES (633, 2010, 'Eighth-Final', 231, 213, 0, 0);
INSERT INTO public.games VALUES (634, 2010, 'Eighth-Final', 215, 207, 1, 0);
INSERT INTO public.games VALUES (635, 2006, 'Final', 233, 202, 1, 1);
INSERT INTO public.games VALUES (636, 2006, 'Third Place', 224, 207, 3, 1);
INSERT INTO public.games VALUES (637, 2006, 'Semi-Final', 233, 224, 2, 0);
INSERT INTO public.games VALUES (638, 2006, 'Semi-Final', 202, 207, 1, 0);
INSERT INTO public.games VALUES (639, 2006, 'Quarter-Final', 233, 234, 3, 0);
INSERT INTO public.games VALUES (640, 2006, 'Quarter-Final', 224, 201, 1, 1);
INSERT INTO public.games VALUES (641, 2006, 'Quarter-Final', 207, 208, 0, 0);
INSERT INTO public.games VALUES (642, 2006, 'Quarter-Final', 202, 205, 1, 0);
INSERT INTO public.games VALUES (643, 2006, 'Eighth-Final', 233, 210, 1, 0);
INSERT INTO public.games VALUES (644, 2006, 'Eighth-Final', 234, 216, 0, 0);
INSERT INTO public.games VALUES (645, 2006, 'Eighth-Final', 224, 219, 2, 0);
INSERT INTO public.games VALUES (646, 2006, 'Eighth-Final', 201, 222, 2, 1);
INSERT INTO public.games VALUES (647, 2006, 'Eighth-Final', 208, 235, 1, 0);
INSERT INTO public.games VALUES (648, 2006, 'Eighth-Final', 207, 206, 1, 0);
INSERT INTO public.games VALUES (649, 2006, 'Eighth-Final', 205, 230, 3, 0);
INSERT INTO public.games VALUES (650, 2006, 'Eighth-Final', 202, 215, 3, 1);
INSERT INTO public.games VALUES (651, 2002, 'Final', 205, 224, 2, 0);
INSERT INTO public.games VALUES (652, 2002, 'Third Place', 236, 214, 3, 2);
INSERT INTO public.games VALUES (653, 2002, 'Semi-Final', 224, 214, 1, 0);
INSERT INTO public.games VALUES (654, 2002, 'Semi-Final', 205, 236, 1, 0);
INSERT INTO public.games VALUES (655, 2002, 'Quarter-Final', 224, 209, 1, 0);
INSERT INTO public.games VALUES (656, 2002, 'Quarter-Final', 214, 215, 0, 0);
INSERT INTO public.games VALUES (657, 2002, 'Quarter-Final', 205, 208, 2, 1);
INSERT INTO public.games VALUES (658, 2002, 'Quarter-Final', 236, 212, 1, 0);
INSERT INTO public.games VALUES (659, 2002, 'Eighth-Final', 224, 231, 1, 0);
INSERT INTO public.games VALUES (660, 2002, 'Eighth-Final', 209, 222, 2, 0);
INSERT INTO public.games VALUES (661, 2002, 'Eighth-Final', 215, 237, 1, 1);
INSERT INTO public.games VALUES (662, 2002, 'Eighth-Final', 214, 233, 2, 1);
INSERT INTO public.games VALUES (663, 2002, 'Eighth-Final', 208, 223, 3, 0);
INSERT INTO public.games VALUES (664, 2002, 'Eighth-Final', 205, 217, 2, 0);
INSERT INTO public.games VALUES (665, 2002, 'Eighth-Final', 219, 212, 1, 2);
INSERT INTO public.games VALUES (666, 2002, 'Eighth-Final', 213, 236, 0, 1);
INSERT INTO public.games VALUES (667, 1998, 'Final', 202, 205, 3, 0);
INSERT INTO public.games VALUES (668, 1998, 'Third Place', 203, 206, 2, 1);
INSERT INTO public.games VALUES (669, 1998, 'Semi-Final', 205, 206, 1, 1);
INSERT INTO public.games VALUES (670, 1998, 'Semi-Final', 202, 203, 2, 1);
INSERT INTO public.games VALUES (671, 1998, 'Quarter-Final', 205, 223, 3, 2);
INSERT INTO public.games VALUES (672, 1998, 'Quarter-Final', 206, 201, 2, 1);
INSERT INTO public.games VALUES (673, 1998, 'Quarter-Final', 203, 224, 3, 0);
INSERT INTO public.games VALUES (674, 1998, 'Quarter-Final', 202, 233, 0, 0);
INSERT INTO public.games VALUES (675, 1998, 'Eighth-Final', 205, 226, 4, 1);
INSERT INTO public.games VALUES (676, 1998, 'Eighth-Final', 227, 223, 1, 4);
INSERT INTO public.games VALUES (677, 1998, 'Eighth-Final', 202, 231, 1, 0);
INSERT INTO public.games VALUES (678, 1998, 'Eighth-Final', 224, 222, 2, 1);
INSERT INTO public.games VALUES (679, 1998, 'Eighth-Final', 206, 238, 2, 1);
INSERT INTO public.games VALUES (680, 1998, 'Eighth-Final', 239, 203, 0, 1);
INSERT INTO public.games VALUES (681, 1998, 'Eighth-Final', 201, 208, 2, 2);
INSERT INTO public.games VALUES (682, 1998, 'Eighth-Final', 227, 223, 1, 4);
INSERT INTO public.games VALUES (683, 1994, 'Final', 205, 233, 0, 0);
INSERT INTO public.games VALUES (684, 1994, 'Third Place', 219, 240, 4, 0);
INSERT INTO public.games VALUES (685, 1994, 'Semi-Final', 205, 219, 1, 0);
INSERT INTO public.games VALUES (686, 1994, 'Semi-Final', 233, 240, 2, 1);
INSERT INTO public.games VALUES (687, 1994, 'Quarter-Final', 205, 206, 3, 2);
INSERT INTO public.games VALUES (688, 1994, 'Quarter-Final', 219, 239, 2, 2);
INSERT INTO public.games VALUES (689, 1994, 'Quarter-Final', 233, 215, 2, 1);
INSERT INTO public.games VALUES (690, 1994, 'Quarter-Final', 240, 224, 2, 1);
INSERT INTO public.games VALUES (691, 1994, 'Eighth-Final', 205, 209, 1, 0);
INSERT INTO public.games VALUES (692, 1994, 'Eighth-Final', 206, 237, 2, 0);
INSERT INTO public.games VALUES (693, 1994, 'Eighth-Final', 224, 217, 3, 2);
INSERT INTO public.games VALUES (694, 1994, 'Eighth-Final', 219, 241, 3, 1);
INSERT INTO public.games VALUES (695, 1994, 'Eighth-Final', 239, 201, 3, 2);
INSERT INTO public.games VALUES (696, 1994, 'Eighth-Final', 233, 227, 2, 1);
INSERT INTO public.games VALUES (697, 1994, 'Eighth-Final', 215, 216, 3, 0);
INSERT INTO public.games VALUES (698, 1994, 'Eighth-Final', 240, 222, 1, 1);
INSERT INTO public.games VALUES (699, 1990, 'Final', 224, 201, 1, 0);
INSERT INTO public.games VALUES (700, 1990, 'Third Place', 233, 208, 2, 1);
INSERT INTO public.games VALUES (701, 1990, 'Semi-Final', 224, 208, 1, 1);
INSERT INTO public.games VALUES (702, 1990, 'Semi-Final', 201, 233, 1, 1);
INSERT INTO public.games VALUES (703, 1990, 'Quarter-Final', 224, 242, 1, 0);
INSERT INTO public.games VALUES (704, 1990, 'Quarter-Final', 201, 238, 0, 0);
INSERT INTO public.games VALUES (705, 1990, 'Quarter-Final', 233, 237, 1, 0);
INSERT INTO public.games VALUES (706, 1990, 'Quarter-Final', 208, 243, 3, 2);
INSERT INTO public.games VALUES (707, 1990, 'Eighth-Final', 224, 206, 2, 1);
INSERT INTO public.games VALUES (708, 1990, 'Eighth-Final', 242, 225, 4, 1);
INSERT INTO public.games VALUES (709, 1990, 'Eighth-Final', 238, 215, 2, 1);
INSERT INTO public.games VALUES (710, 1990, 'Eighth-Final', 201, 205, 1, 0);
INSERT INTO public.games VALUES (711, 1990, 'Eighth-Final', 237, 239, 0, 0);
INSERT INTO public.games VALUES (712, 1990, 'Eighth-Final', 233, 220, 2, 0);
INSERT INTO public.games VALUES (713, 1990, 'Eighth-Final', 208, 217, 1, 0);
INSERT INTO public.games VALUES (714, 1990, 'Eighth-Final', 243, 221, 2, 1);
INSERT INTO public.games VALUES (715, 1986, 'Final', 201, 224, 3, 2);
INSERT INTO public.games VALUES (716, 1986, 'Third Place', 202, 217, 4, 2);
INSERT INTO public.games VALUES (717, 1986, 'Semi-Final', 201, 217, 2, 0);
INSERT INTO public.games VALUES (718, 1986, 'Semi-Final', 224, 202, 2, 0);
INSERT INTO public.games VALUES (719, 1986, 'Quarter-Final', 201, 208, 2, 1);
INSERT INTO public.games VALUES (720, 1986, 'Quarter-Final', 217, 215, 1, 1);
INSERT INTO public.games VALUES (721, 1986, 'Quarter-Final', 202, 205, 1, 1);
INSERT INTO public.games VALUES (722, 1986, 'Quarter-Final', 224, 222, 0, 0);
INSERT INTO public.games VALUES (723, 1986, 'Eighth-Final', 201, 220, 1, 0);
INSERT INTO public.games VALUES (724, 1986, 'Eighth-Final', 208, 231, 3, 0);
INSERT INTO public.games VALUES (725, 1986, 'Eighth-Final', 222, 240, 2, 0);
INSERT INTO public.games VALUES (726, 1986, 'Eighth-Final', 205, 211, 4, 0);
INSERT INTO public.games VALUES (727, 1986, 'Eighth-Final', 202, 233, 2, 0);
INSERT INTO public.games VALUES (728, 1986, 'Eighth-Final', 217, 244, 4, 3);
INSERT INTO public.games VALUES (729, 1986, 'Eighth-Final', 215, 223, 5, 1);
INSERT INTO public.games VALUES (730, 1986, 'Eighth-Final', 224, 204, 1, 0);
INSERT INTO public.games VALUES (731, 1982, 'Final', 233, 224, 3, 1);
INSERT INTO public.games VALUES (732, 1982, 'Third Place', 211, 202, 3, 2);
INSERT INTO public.games VALUES (733, 1982, 'Semi-Final', 233, 211, 2, 0);
INSERT INTO public.games VALUES (734, 1982, 'Semi-Final', 224, 202, 3, 3);
INSERT INTO public.games VALUES (735, 1982, 'Quarter-Final', 233, 205, 3, 2);
INSERT INTO public.games VALUES (736, 1982, 'Quarter-Final', 224, 208, 0, 0);
INSERT INTO public.games VALUES (737, 1982, 'Quarter-Final', 202, 245, 4, 1);
INSERT INTO public.games VALUES (738, 1982, 'Quarter-Final', 211, 244, 0, 0);
INSERT INTO public.games VALUES (739, 1982, 'Eighth-Final', 233, 201, 2, 1);
INSERT INTO public.games VALUES (740, 1982, 'Eighth-Final', 205, 201, 3, 1);
INSERT INTO public.games VALUES (741, 1982, 'Eighth-Final', 224, 215, 2, 1);
INSERT INTO public.games VALUES (742, 1982, 'Eighth-Final', 202, 246, 1, 0);
INSERT INTO public.games VALUES (743, 1982, 'Eighth-Final', 211, 217, 3, 0);
INSERT INTO public.games VALUES (744, 1982, 'Eighth-Final', 208, 215, 2, 0);
INSERT INTO public.games VALUES (745, 1982, 'Eighth-Final', 244, 217, 1, 0);
INSERT INTO public.games VALUES (746, 1982, 'Eighth-Final', 245, 246, 2, 2);
INSERT INTO public.games VALUES (747, 1978, 'Final', 201, 206, 3, 1);
INSERT INTO public.games VALUES (748, 1978, 'Third Place', 205, 233, 2, 1);
INSERT INTO public.games VALUES (749, 1978, 'Semi-Final', 201, 247, 6, 0);
INSERT INTO public.games VALUES (750, 1978, 'Semi-Final', 206, 233, 2, 1);
INSERT INTO public.games VALUES (751, 1978, 'Quarter-Final', 201, 205, 0, 0);
INSERT INTO public.games VALUES (752, 1978, 'Quarter-Final', 206, 246, 5, 1);
INSERT INTO public.games VALUES (753, 1978, 'Quarter-Final', 233, 224, 0, 0);
INSERT INTO public.games VALUES (754, 1978, 'Quarter-Final', 205, 247, 3, 0);
INSERT INTO public.games VALUES (755, 1974, 'Final', 224, 206, 2, 1);
INSERT INTO public.games VALUES (756, 1974, 'Third Place', 205, 201, 2, 1);
INSERT INTO public.games VALUES (757, 1974, 'Semi-Final', 224, 211, 1, 0);
INSERT INTO public.games VALUES (758, 1974, 'Semi-Final', 206, 205, 2, 0);
INSERT INTO public.games VALUES (759, 1974, 'Quarter-Final', 224, 238, 2, 0);
INSERT INTO public.games VALUES (760, 1974, 'Quarter-Final', 205, 224, 1, 0);
INSERT INTO public.games VALUES (761, 1974, 'Quarter-Final', 206, 248, 2, 0);
INSERT INTO public.games VALUES (762, 1974, 'Quarter-Final', 201, 233, 1, 1);
INSERT INTO public.games VALUES (763, 1970, 'Final', 205, 233, 4, 1);
INSERT INTO public.games VALUES (764, 1970, 'Third Place', 224, 220, 1, 0);
INSERT INTO public.games VALUES (765, 1970, 'Semi-Final', 205, 220, 3, 1);
INSERT INTO public.games VALUES (766, 1970, 'Semi-Final', 233, 224, 4, 3);
INSERT INTO public.games VALUES (767, 1970, 'Quarter-Final', 205, 247, 4, 2);
INSERT INTO public.games VALUES (768, 1970, 'Quarter-Final', 220, 244, 1, 0);
INSERT INTO public.games VALUES (769, 1970, 'Quarter-Final', 233, 222, 4, 1);
INSERT INTO public.games VALUES (770, 1970, 'Quarter-Final', 224, 208, 3, 2);
INSERT INTO public.games VALUES (771, 1966, 'Final', 208, 224, 4, 2);
INSERT INTO public.games VALUES (772, 1966, 'Third Place', 207, 244, 2, 1);
INSERT INTO public.games VALUES (773, 1966, 'Semi-Final', 208, 207, 2, 1);
INSERT INTO public.games VALUES (774, 1966, 'Semi-Final', 224, 244, 2, 1);
INSERT INTO public.games VALUES (775, 1966, 'Quarter-Final', 208, 201, 1, 0);
INSERT INTO public.games VALUES (776, 1966, 'Quarter-Final', 207, 249, 5, 3);
INSERT INTO public.games VALUES (777, 1966, 'Quarter-Final', 224, 220, 4, 0);
INSERT INTO public.games VALUES (778, 1966, 'Quarter-Final', 244, 250, 2, 1);
INSERT INTO public.games VALUES (779, 1962, 'Final', 205, 242, 3, 1);
INSERT INTO public.games VALUES (780, 1962, 'Third Place', 226, 238, 1, 0);
INSERT INTO public.games VALUES (781, 1962, 'Semi-Final', 205, 226, 4, 2);
INSERT INTO public.games VALUES (782, 1962, 'Semi-Final', 242, 238, 3, 1);
INSERT INTO public.games VALUES (783, 1962, 'Quarter-Final', 205, 208, 3, 1);
INSERT INTO public.games VALUES (784, 1962, 'Quarter-Final', 226, 244, 2, 1);
INSERT INTO public.games VALUES (785, 1962, 'Quarter-Final', 242, 250, 1, 0);
INSERT INTO public.games VALUES (786, 1962, 'Quarter-Final', 238, 224, 1, 0);
INSERT INTO public.games VALUES (787, 1958, 'Final', 205, 219, 5, 2);
INSERT INTO public.games VALUES (788, 1958, 'Third Place', 202, 224, 6, 3);
INSERT INTO public.games VALUES (789, 1958, 'Semi-Final', 205, 202, 5, 2);
INSERT INTO public.games VALUES (790, 1958, 'Semi-Final', 219, 224, 3, 1);
INSERT INTO public.games VALUES (791, 1958, 'Quarter-Final', 205, 251, 1, 0);
INSERT INTO public.games VALUES (792, 1958, 'Quarter-Final', 202, 245, 4, 0);
INSERT INTO public.games VALUES (793, 1958, 'Quarter-Final', 224, 238, 1, 0);
INSERT INTO public.games VALUES (794, 1958, 'Quarter-Final', 219, 244, 2, 0);
INSERT INTO public.games VALUES (795, 1954, 'Final', 224, 250, 3, 2);
INSERT INTO public.games VALUES (796, 1954, 'Third Place', 246, 220, 3, 1);
INSERT INTO public.games VALUES (797, 1954, 'Semi-Final', 224, 246, 6, 1);
INSERT INTO public.games VALUES (798, 1954, 'Semi-Final', 250, 220, 4, 2);
INSERT INTO public.games VALUES (799, 1954, 'Quarter-Final', 224, 238, 2, 0);
INSERT INTO public.games VALUES (800, 1954, 'Quarter-Final', 246, 216, 7, 5);
INSERT INTO public.games VALUES (801, 1954, 'Quarter-Final', 250, 205, 4, 2);
INSERT INTO public.games VALUES (802, 1954, 'Quarter-Final', 220, 208, 4, 2);
INSERT INTO public.games VALUES (803, 1950, 'Final', 220, 205, 2, 1);
INSERT INTO public.games VALUES (804, 1950, 'Third Place', 219, 215, 3, 1);
INSERT INTO public.games VALUES (805, 1950, 'Semi-Final', 205, 219, 7, 1);
INSERT INTO public.games VALUES (806, 1950, 'Semi-Final', 220, 215, 3, 2);
INSERT INTO public.games VALUES (807, 1938, 'Final', 233, 250, 4, 2);
INSERT INTO public.games VALUES (808, 1938, 'Semi-Final', 233, 205, 2, 1);
INSERT INTO public.games VALUES (809, 1938, 'Semi-Final', 250, 219, 5, 1);
INSERT INTO public.games VALUES (810, 1938, 'Quarter-Final', 233, 202, 3, 1);
INSERT INTO public.games VALUES (811, 1938, 'Quarter-Final', 205, 242, 2, 1);
INSERT INTO public.games VALUES (812, 1938, 'Quarter-Final', 219, 252, 8, 0);
INSERT INTO public.games VALUES (813, 1938, 'Quarter-Final', 250, 216, 2, 0);
INSERT INTO public.games VALUES (814, 1934, 'Final', 233, 242, 2, 1);
INSERT INTO public.games VALUES (815, 1934, 'Semi-Final', 233, 246, 1, 0);
INSERT INTO public.games VALUES (816, 1934, 'Semi-Final', 242, 224, 3, 1);
INSERT INTO public.games VALUES (817, 1934, 'Quarter-Final', 233, 215, 1, 0);
INSERT INTO public.games VALUES (818, 1934, 'Quarter-Final', 246, 250, 2, 1);
INSERT INTO public.games VALUES (819, 1934, 'Quarter-Final', 224, 219, 2, 1);
INSERT INTO public.games VALUES (820, 1934, 'Quarter-Final', 242, 216, 3, 2);
INSERT INTO public.games VALUES (821, 1930, 'Final', 220, 201, 4, 2);
INSERT INTO public.games VALUES (822, 1930, 'Semi-Final', 220, 238, 6, 1);
INSERT INTO public.games VALUES (823, 1930, 'Semi-Final', 201, 209, 6, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (201, 'Argentina');
INSERT INTO public.teams VALUES (202, 'France');
INSERT INTO public.teams VALUES (203, 'Croatia');
INSERT INTO public.teams VALUES (204, 'Morocco');
INSERT INTO public.teams VALUES (205, 'Brazil');
INSERT INTO public.teams VALUES (206, 'Netherlands');
INSERT INTO public.teams VALUES (207, 'Portugal');
INSERT INTO public.teams VALUES (208, 'England');
INSERT INTO public.teams VALUES (209, 'United States');
INSERT INTO public.teams VALUES (210, 'Australia');
INSERT INTO public.teams VALUES (211, 'Poland');
INSERT INTO public.teams VALUES (212, 'Senegal');
INSERT INTO public.teams VALUES (213, 'Japan');
INSERT INTO public.teams VALUES (214, 'South Korea');
INSERT INTO public.teams VALUES (215, 'Spain');
INSERT INTO public.teams VALUES (216, 'Switzerland');
INSERT INTO public.teams VALUES (217, 'Belgium');
INSERT INTO public.teams VALUES (218, 'Russia');
INSERT INTO public.teams VALUES (219, 'Sweden');
INSERT INTO public.teams VALUES (220, 'Uruguay');
INSERT INTO public.teams VALUES (221, 'Colombia');
INSERT INTO public.teams VALUES (222, 'Mexico');
INSERT INTO public.teams VALUES (223, 'Denmark');
INSERT INTO public.teams VALUES (224, 'Germany');
INSERT INTO public.teams VALUES (225, 'Costa Rica');
INSERT INTO public.teams VALUES (226, 'Chile');
INSERT INTO public.teams VALUES (227, 'Nigeria');
INSERT INTO public.teams VALUES (228, 'Algeria');
INSERT INTO public.teams VALUES (229, 'Greece');
INSERT INTO public.teams VALUES (230, 'Ghana');
INSERT INTO public.teams VALUES (231, 'Paraguay');
INSERT INTO public.teams VALUES (232, 'Slovakia');
INSERT INTO public.teams VALUES (233, 'Italy');
INSERT INTO public.teams VALUES (234, 'Ukraine');
INSERT INTO public.teams VALUES (235, 'Ecuador');
INSERT INTO public.teams VALUES (236, 'Turkey');
INSERT INTO public.teams VALUES (237, 'Ireland');
INSERT INTO public.teams VALUES (238, 'Yugoslavia');
INSERT INTO public.teams VALUES (239, 'Romania');
INSERT INTO public.teams VALUES (240, 'Bulgaria');
INSERT INTO public.teams VALUES (241, 'Saudi Arabia');
INSERT INTO public.teams VALUES (242, 'Czechoslovakia');
INSERT INTO public.teams VALUES (243, 'Cameroon');
INSERT INTO public.teams VALUES (244, 'Soviet Union');
INSERT INTO public.teams VALUES (245, 'Northern Ireland');
INSERT INTO public.teams VALUES (246, 'Austria');
INSERT INTO public.teams VALUES (247, 'Peru');
INSERT INTO public.teams VALUES (248, 'East Germany');
INSERT INTO public.teams VALUES (249, 'North Korea');
INSERT INTO public.teams VALUES (250, 'Hungary');
INSERT INTO public.teams VALUES (251, 'Wales');
INSERT INTO public.teams VALUES (252, 'Cuba');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 823, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 252, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

