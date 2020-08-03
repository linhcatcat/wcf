<?php

namespace App\Entity;

use App\Repository\NutritionCategoryRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\String\Slugger\AsciiSlugger;
use function Symfony\Component\String\u;

/**
 * @ORM\Entity(repositoryClass=NutritionCategoryRepository::class)
 * @ORM\HasLifecycleCallbacks()
 */
class NutritionCategory
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\OneToMany(targetEntity="NutritionInformation", mappedBy="category")
     */
    private $nutritionInformations;

    public function __construct()
    {
        $this->nutritionInformations = new ArrayCollection();
    }

    /**
     * @ORM\Column(type="text", length=250)
     */
    private $name;

    /**
     * @ORM\Column(type="text", length=250, nullable=true)
     */
    private $slug;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="datetime", options={"default": "CURRENT_TIMESTAMP"})
     * @var \DateTime
     */
    private $createdAt;

    /**
     * @ORM\PrePersist
     */
    public function setCreatedAtValue()
    {
        $this->createdAt = new \DateTime('now');
        $slugger = new AsciiSlugger();
        $this->setSlug($slugger->slug(u($this->getName())->lower()));
    }

    /**
     * @ORM\PreUpdate
     */
    public function setUpdatedAtValue()
    {
        $slugger = new AsciiSlugger();
        $this->setSlug($slugger->slug(u($this->getName())->lower()));
    }

    public function __toString() {
        return $this->name;
    }

    public function getId() {
        return $this->id;
    }

    public function getNutritionInformations() {
        return $this->nutritionInformations;
    }

    public function setNutritionInformations($nutritionInformations) {
        $this->nutritionInformations = $nutritionInformations;
    }

    public function getName() {
        return $this->name;
    }

    public function setName($name) {
        $this->name = $name;
    }

    public function getSlug() {
        return $this->slug;
    }

    public function setSlug($slug) {
        $this->slug = $slug;
    }

    public function getDescription() {
        return $this->description;
    }

    public function setDescription($description) {
        $this->description = $description;
    }

    public function getCreatedAt()
    {
        return $this->createdAt;
    }
}
