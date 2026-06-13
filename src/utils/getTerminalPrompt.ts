import axios from 'axios';

export const getTerminalPrompt = async (): Promise<string> => {
try {
const response = await axios.get('https://ipinfo.io/json');
const { ip, city, country } = response.data;


return `[${ip} - ${city}, ${country}]@muthukannan.dev: `;

} catch (error) {
console.error('Error fetching IP details:', error);


return '[Unknown User]@muthukannan.dev: ';


}
};
