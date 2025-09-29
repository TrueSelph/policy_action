import markdown;
import from typing { Union }
import from jivas.agent.modules.text.formatting { to_snake_case }
import from jivas.agent.action.action { Action }

node PolicyAction(Action) {
    # Manages AI policy document serving for an Agent

    has policy_url:str = "";
    has content: str = """
# AI Policy

### 1. Introduction

At TrueSelph Inc, we are committed to providing a seamless and secure experience with our AI-powered virtual assistant referred to as a ‘Selph’. This AI policy outlines our principles and practices to ensure user privacy, data protection, and responsible AI usage.

### 2. User Consent

The Selph operates on WhatsApp, and by using our service, you consent to the terms outlined in this policy. We prioritize user consent and will never use your data without your explicit permission.

### 3. Data Privacy

#### Data Collection
This Selph may collect user data, including messages, voice recordings, and user interactions, solely for the purpose of delivering personalized responses.

#### Data Security
We employ robust security measures to protect your data from unauthorized access, breaches, or misuse. Our data handling complies with all relevant data protection laws. We anonymize and obfuscate all sensitive information within chats which may be logged for analytics. Our platform does not persist or archive voice notes or recorded speech.

#### Data Sharing
We do not share your personal data with third parties unless required by law or with your explicit consent.

### 4. Transparency

#### Explainability
We aim to make this Selph's actions and responses transparent and understandable. If you have questions about how this Selph operates, please [contact our support team](https://wa.me/+5926214954).

#### AI Decision-Making
While AI powers this Selph, human oversight ensures that AI-driven decisions align with ethical and legal standards.

### 5. Responsiveness to User Concerns

We value user feedback and are committed to addressing any concerns or inquiries promptly. You can reach out to our support team [through WhatsApp](https://wa.me/+5926214954) or email us at hello@trueselph.com.

### 6. User Rights

#### Data Access
You have the right to access the data collected by this Selph and request its deletion.

#### Data Correction and Accuracy
You can request corrections to inaccurate or incomplete data. We strive to maintain data accuracy and will make every effort to correct inaccuracies promptly. If you believe any information provided by this Selph is inaccurate, [please inform us immediately](https://wa.me/+5926214954).


### 7. Ethical Usage

This Selph is designed to provide helpful information and services. It will not engage in harmful, offensive, or illegal activities. We strictly prohibit the use of this Selph for any malicious purposes.

### 8. Compliance with Laws

We comply with all applicable data protection, privacy, and AI ethics laws and regulations in your region.

### 9. Continuous Improvement

We are committed to continually improving this Selph's capabilities, user experience, and privacy measures. This policy will be updated accordingly.

### 10. Contact Information

If you have questions or concerns about this AI policy or this Selph's operations, please reach out to our support team [through WhatsApp](https://wa.me/+5926214954) or email us at hello@trueselph.com.

By interacting with this Selph, you acknowledge and agree to the terms outlined in this AI policy. We appreciate your trust in us and are dedicated to providing you with a safe and reliable virtual assistant experience.

TrueSelph Inc.
14 March, 2024

""";

   has style: str =  """
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Ubuntu', 'Times New Roman', serif;
    line-height: 1.8;
    color: #1a1a1a;
    background: linear-gradient(135deg, #f5f5f5 0%, #e8e8e8 100%);
    padding: 80px 40px;
    max-width: 1000px;
    margin: 0 auto;
    position: relative;
}

body::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 8px;
    background: linear-gradient(90deg, #000 0%, #666 50%, #000 100%);
    z-index: 1000;
}


p {
    margin-bottom: 25px;
    text-align: justify;
    font-size: 16px;
    color: #2a2a2a;
    background: #fff;
    padding: 20px 30px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.08);
    border-left: 3px solid transparent;
    transition: all 0.3s ease;
}

p:hover {
    border-left-color: #000;
    box-shadow: 0 4px 16px rgba(0,0,0,0.12);
}

/* Paragraphs with em (italic notes and footer) */
p em {
    font-style: italic;
    color: #555;
}

body > p:has(em) {
    background: #f9f9f9;
    border-left: 5px solid #000;
    font-style: italic;
}

h1 {
    font-size: 32px;
    font-weight: 900;
    color: #000;
    margin: 80px 0 30px 0;
    text-transform: uppercase;
    letter-spacing: -0.5px;
    background: #fff;
    padding: 30px 40px;
    box-shadow: 0 8px 24px rgba(0,0,0,0.15);
    position: relative;
    border-top: 8px solid #000;
    border-bottom: 8px solid #000;
}

h1::after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 100%;
    height: 8px;
    background: linear-gradient(90deg, #000 0%, #666 50%, #000 100%);
}

/* Empty h1 tags */
h1:empty {
    display: none;
}

h2 {
    color: #000;
    font-size: 26px;
    margin-top: 60px;
    margin-bottom: 25px;
    font-weight: 900;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    padding-left: 30px;
    background: #fff;
    padding: 20px 20px 20px 50px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

h2::before {
    content: '';
    position: absolute;
    left: 20px;
    top: 50%;
    transform: translateY(-50%);
    width: 14px;
    height: 14px;
    background: #000;
    border: 4px solid #fff;
    box-shadow: 0 0 0 2px #000;
    border-radius: 2px;
}

h3 {
    color: #000;
    font-size: 21px;
    margin-top: 45px;
    margin-bottom: 20px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    border-left: 6px solid #000;
    padding-left: 20px;
    background: #fff;
    padding: 15px 20px 15px 26px;
    box-shadow: 0 3px 10px rgba(0,0,0,0.08);
}

ul {
    margin-left: 0;
    margin-bottom: 35px;
    list-style: none;
    background: #fff;
    padding: 25px 30px 25px 50px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.08);
}

li {
    margin-bottom: 18px;
    text-align: justify;
    position: relative;
    padding-left: 30px;
    font-size: 16px;
    color: #2a2a2a;
}

li::before {
    content: '◆';
    position: absolute;
    left: 0;
    font-size: 16px;
    font-weight: bold;
    color: #000;
}

li p {
    display: inline;
    background: none;
    padding: 0;
    margin: 0;
    box-shadow: none;
    border: none;
}

li p:hover {
    border: none;
    box-shadow: none;
}

strong {
    color: #000;
    font-weight: bold;
}

hr {
    border: none;
    height: 3px;
    background: linear-gradient(90deg, transparent 0%, #000 50%, transparent 100%);
    margin: 60px 0;
    box-shadow: 0 2px 8px rgba(0,0,0,0.15);
}

a {
    color: #000;
    text-decoration: none;
    border-bottom: 2px solid #000;
    transition: all 0.3s ease;
    font-weight: bold;
    padding: 2px 4px;
}

a:hover {
    background: #000;
    color: #fff;
}

/* Last paragraph with em - footer note */
body > p:last-of-type {
    text-align: center;
    font-style: italic;
    color: #666;
    margin-top: 60px;
    padding-top: 30px;
    border-top: 3px solid #000;
    border-left: none;
    font-size: 15px;
    letter-spacing: 1px;
    background: #fff;
}

@media (max-width: 768px) {
    body {
        padding: 60px 20px;
    }

    body > p:first-of-type {
        font-size: 28px;
    }

    h1 {
        font-size: 26px;
        padding: 25px 30px;
    }

    h2 {
        font-size: 22px;
    }

    p, ul {
        padding: 15px 20px;
    }
}
""";

    def on_register() {
        if self.enabled {
            self.dump_policy_document();
        }
    }

    def post_update() {
        self.dump_policy_document();
    }

    def healthcheck() -> Union[bool, dict] {

        if not self.content {
            return {
                "status": True,
                "message": "Policy document content is missing.",
                "severity": "warning"
            };
        }

        if(not self.policy_url) {
            return {
                "status": False,
                "message": "Policy document may not be accessible.",
                "severity": "error"
            };
        }
    }

    def dump_policy_document() -> bool {
        # writes current policy document to the public filesystem

        if not self.content {
            return False;
        }

        agent_name = self.get_agent().name;
        # prepare filename based on agent
        output_filename = f"{to_snake_case(agent_name)}.html";
        output_file_path = f"policy/{output_filename}";
        # convert markdown to html bytes for file writing
        html = markdown.markdown( (self.content).replace('{agent_name}', agent_name) );

        # save document to the file system
        if( self.get_agent().save_file(output_file_path, html.encode('utf-8') + f"<style>{self.style}</style>".encode('utf-8')) ) {
            self.policy_url = self.get_agent().get_short_file_url(output_file_path);
            return True;
        }

        return False;
    }

}
