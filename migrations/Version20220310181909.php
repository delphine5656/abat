<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220310181909 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE agent_speciality (agent_id INT NOT NULL, speciality_id INT NOT NULL, INDEX IDX_829171813414710B (agent_id), INDEX IDX_829171813B5A08D7 (speciality_id), PRIMARY KEY(agent_id, speciality_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE agent_speciality ADD CONSTRAINT FK_829171813414710B FOREIGN KEY (agent_id) REFERENCES agent (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE agent_speciality ADD CONSTRAINT FK_829171813B5A08D7 FOREIGN KEY (speciality_id) REFERENCES speciality (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE cible ADD nationality_id INT NOT NULL');
        $this->addSql('ALTER TABLE cible ADD CONSTRAINT FK_E15DEC3B1C9DA55 FOREIGN KEY (nationality_id) REFERENCES nationality (id)');
        $this->addSql('CREATE INDEX IDX_E15DEC3B1C9DA55 ON cible (nationality_id)');
        $this->addSql('ALTER TABLE contact ADD nationality_id INT NOT NULL');
        $this->addSql('ALTER TABLE contact ADD CONSTRAINT FK_4C62E6381C9DA55 FOREIGN KEY (nationality_id) REFERENCES nationality (id)');
        $this->addSql('CREATE INDEX IDX_4C62E6381C9DA55 ON contact (nationality_id)');
        $this->addSql('ALTER TABLE planque ADD pays_id INT NOT NULL, ADD type_id INT NOT NULL');
        $this->addSql('ALTER TABLE planque ADD CONSTRAINT FK_4B3A04BAA6E44244 FOREIGN KEY (pays_id) REFERENCES pays (id)');
        $this->addSql('ALTER TABLE planque ADD CONSTRAINT FK_4B3A04BAC54C8C93 FOREIGN KEY (type_id) REFERENCES type_planque (id)');
        $this->addSql('CREATE INDEX IDX_4B3A04BAA6E44244 ON planque (pays_id)');
        $this->addSql('CREATE INDEX IDX_4B3A04BAC54C8C93 ON planque (type_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE agent_speciality');
        $this->addSql('ALTER TABLE agent CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE cible DROP FOREIGN KEY FK_E15DEC3B1C9DA55');
        $this->addSql('DROP INDEX IDX_E15DEC3B1C9DA55 ON cible');
        $this->addSql('ALTER TABLE cible DROP nationality_id, CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE name_code name_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE contact DROP FOREIGN KEY FK_4C62E6381C9DA55');
        $this->addSql('DROP INDEX IDX_4C62E6381C9DA55 ON contact');
        $this->addSql('ALTER TABLE contact DROP nationality_id, CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE nom_code nom_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE messenger_messages CHANGE body body LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE headers headers LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE queue_name queue_name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE mission CHANGE non_code non_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE titre titre VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE description description LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE slug slug VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE nationality CHANGE name_nationality name_nationality VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE pays CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE planque DROP FOREIGN KEY FK_4B3A04BAA6E44244');
        $this->addSql('ALTER TABLE planque DROP FOREIGN KEY FK_4B3A04BAC54C8C93');
        $this->addSql('DROP INDEX IDX_4B3A04BAA6E44244 ON planque');
        $this->addSql('DROP INDEX IDX_4B3A04BAC54C8C93 ON planque');
        $this->addSql('ALTER TABLE planque DROP pays_id, DROP type_id, CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE adresse adresse LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE speciality CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE statut CHANGE name_statut name_statut VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE type_mission CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE type_planque CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE user CHANGE email email VARCHAR(180) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE password password VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
